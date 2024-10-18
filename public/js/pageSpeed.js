import { formatDate, isValidURL } from "./helpers";

let resultsObject = {};
let metricsChart = null;
const containerSuccess = document.getElementById("successContainer");
const errorContainer = document.getElementById("errorContainer");

function showMessageSuccess(message) {
    containerSuccess.textContent = message;
    containerSuccess.style.display = "block";
    setTimeout(() => {
        containerSuccess.style.display = "none";
    }, 2500);
}

function cleanMessageSuccess() {
    containerSuccess.textContent = "";
    containerSuccess.style.display = "none";
}

function showError(message) {
    errorContainer.textContent = message;
    errorContainer.style.display = "block";
    setTimeout(() => {
        errorContainer.style.display = "none";
    }, 2500);
}

function cleanError() {
    errorContainer.textContent = "";
    errorContainer.style.display = "none";
}

function validateConditions(conditions) {
    cleanError();

    for (const condition of conditions) {
        if (!condition.check()) {
            showError(condition.message);
            return false;
        }
    }
    return true;
}

async function handleSubmit(event) {
    event.preventDefault();

    const formData = new FormData(this);
    const selectedCategories = getSelectedCategories();

    const conditions = [
        {
            check: () => isValidURL(formData.get("url")),
            message:
                "La URL no es válida. Por favor, ingresa una URL correcta.",
        },
        {
            check: () => selectedCategories.length > 0,
            message: "Por favor, selecciona al menos una categoría.",
        },
    ];

    if (!validateConditions(conditions)) {
        return;
    }

    updateFormDataWithCategories(formData, selectedCategories);

    const apiUrl = `getMetrics?${new URLSearchParams(formData).toString()}`;

    const btnRunMetric = document.getElementById("btnRunMetric");
    btnRunMetric.classList.add("loading");

    try {
        const data = await fetchMetrics(apiUrl);
        displayResults(data);
    } catch (error) {
        console.error("Error:", error);
    } finally {
        btnRunMetric.classList.remove("loading");
    }
}

function getSelectedCategories() {
    return Array.from(
        document.querySelectorAll('input[name="categories[]"]:checked')
    ).map((checkbox) => checkbox.value);
}

function updateFormDataWithCategories(formData, selectedCategories) {
    formData.delete("categories[]");
    selectedCategories.forEach((category) => {
        formData.append("categories[]", category);
    });
}

async function fetchMetrics(apiUrl) {
    try {
        const response = await fetch(apiUrl, {
            method: "GET",
            headers: {
                "X-CSRF-TOKEN": "{{ csrf_token() }}",
            },
        });

        if (!response.ok) {
            throw new Error(
                "Network response was not ok " + response.statusText
            );
        }
        return await response.json();
    } catch (error) {
        showError("Error con el servidor.Intente mas tarde por favor!");
    }
}

function displayResults(data) {
    const categories = [
        { key: "accessibility", label: "Accessibility" },
        { key: "pwa", label: "PWA" },
        { key: "performance", label: "Performance" },
        { key: "seo", label: "SEO" },
        { key: "best_practices", label: "Best Practices" },
    ];

    const scores = [];
    const labels = [];

    categories.forEach((category) => {
        const value = data[category.key];
        if (value) {
            labels.push(category.label);
            scores.push(value);
        }
    });

    resultsObject["url"] = data["url"];
    resultsObject["strategy"] = data["strategy"];

    document.getElementById("saveRun").style.display = "block";

    initializeChart(labels, scores, data["url"]);
}

function initializeChart(labels, scores, urlMetric) {
    const ctx = document.getElementById("metricsChart");
    ctx.style.display = "block";
    ctx.getContext("2d");

    if (metricsChart) {
        metricsChart.destroy();
    }

    metricsChart = new Chart(ctx, {
        type: "bar",
        data: {
            labels: [],
            datasets: [
                {
                    label: "Puntaje de métricas",
                    data: [],
                    backgroundColor: "rgba(75, 192, 192, 0.2)",
                    borderColor: "rgba(75, 192, 192, 1)",
                    borderWidth: 1,
                },
            ],
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true,
                },
            },
            plugins: {
                title: {
                    display: true,
                    text: "Métricas",
                },
            },
        },
    });

    updateChart(metricsChart, labels, scores, urlMetric);
}

function updateChart(metricsChart, labels, scores, urlMetric) {
    metricsChart.data.labels = [];
    metricsChart.data.datasets[0].data = [];

    metricsChart.data.labels.push(...labels);
    metricsChart.data.datasets[0].data.push(...scores);

    metricsChart.options.plugins.title.text = `Métricas para ${urlMetric}`;

    metricsChart.update();
}

function garbageCollector() {
    resultsObject = {};

    const chartsDiv = document.getElementById("metricsChart");
    chartsDiv.style.display = "none";

    document.getElementById("saveRun").style.display = "none";
    document.getElementById("urlInput").value = "";

    const categoryCheckboxes = document.querySelectorAll(
        'input[type="checkbox"]'
    );
    categoryCheckboxes.forEach((checkbox) => {
        checkbox.checked = false;
    });
}

async function saveMetrics() {
    const apiUrl = "saveMetrics";

    try {
        const response = await fetch(apiUrl, {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
                "X-CSRF-TOKEN": "{{ csrf_token() }}",
            },
            body: JSON.stringify(resultsObject),
        });

        if (!response.ok) {
            throw new Error(response.statusText);
        }

        const result = await response.json();
        showMessageSuccess("La métrica se ha guardado con éxito!");
        garbageCollector();
    } catch (error) {
        showError(error);
    }
}

async function runMyMetricsRequest() {
    try {
        const response = await fetch("getMyMetrics", {
            method: "GET",
            headers: {
                "Content-Type": "application/json",
            },
        });

        if (!response.ok) {
            throw new Error(response.statusText);
        }

        const data = await response.json();
        fillTable(data);
    } catch (error) {
        showError(error);
    }
}

function fillTable(data) {
    const table = new Tabulator("#metricHistoryTable", {
        data,
        height: "200px",
        layout: "fitColumns",
        columns: [
            { title: "URL", field: "url", width: 200 },
            { title: "Accessibility", field: "accessibility", width: 100 },
            { title: "PWA", field: "pwa", width: 100 },
            { title: "Performance", field: "performance", width: 100 },
            { title: "SEO", field: "seo", width: 100 },
            { title: "Best Practices", field: "best_practices", width: 150 },
            { title: "Strategy", field: "strategy.name", width: 100 },
            {
                title: "Datetime",
                field: "created_at",
                formatter: formatDate,
                width: 150,
            },
        ],
    });
}

function toggleSections(
    activeTabId,
    inactiveTabId,
    activeSectionId,
    inactiveSectionId
) {
    document.getElementById(activeTabId).classList.remove("inactive");
    document.getElementById(inactiveTabId).classList.add("inactive");
    document.getElementById(activeSectionId).classList.add("active");
    document.getElementById(inactiveSectionId).classList.remove("active");
}

document.getElementById("runMetricTab").addEventListener("click", function () {
    toggleSections(
        "runMetricTab",
        "metricHistoryTab",
        "runMetricSection",
        "metricHistorySection"
    );
});

document
    .getElementById("metricHistoryTab")
    .addEventListener("click", function () {
        toggleSections(
            "metricHistoryTab",
            "runMetricTab",
            "metricHistorySection",
            "runMetricSection"
        );
        runMyMetricsRequest();
    });

document
    .getElementById("pagespeedForm")
    .addEventListener("submit", handleSubmit);
document.getElementById("saveRun").addEventListener("click", saveMetrics);
