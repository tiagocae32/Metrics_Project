<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <link href="https://unpkg.com/tabulator-tables@5.0.7/dist/css/tabulator.min.css" rel="stylesheet">
        <script src="https://unpkg.com/tabulator-tables@5.0.7/dist/js/tabulator.min.js"></script>


        <title>Metrics Project</title>
        @vite('public/css/pageSpeed.css')

        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.bunny.net">
        <link href="https://fonts.bunny.net/css?family=figtree:400,500,600&display=swap" rel="stylesheet" />
    </head>

    <body>
        <div class="container">
        <div id="loader" class="loader"></div>

            <div class="tabs">
                <button id="runMetricTab" class="active">Run Metric</button>
                <button id="metricHistoryTab" class="inactive">Metric History</button>
            </div>

            <div id="runMetricSection" class="form-section active">
                <h1 id="runMetricText">Run Metric</h1>
                <div id="successContainer" class="success-message"></div>
                <div id="errorContainer" class="error-message"></div>
                <form id="pagespeedForm">
                    <input type="text" id="urlInput" name="url" placeholder="Ingresa una Url valida" required>

                    <div class="checkboxes">
                        @foreach ($categories as $category)
                            <label>
                                <input type="checkbox" name="categories[]" value="{{ $category->name }}">
                                {{ $category->name }}
                            </label>
                        @endforeach
                    </div>

                    <select id="selectStrategy" name="strategy">
                        @foreach ($strategies as $strategy)
                            <option value="{{ $strategy->name }}">{{ $strategy->name }}</option>
                        @endforeach
                    </select>

                    <button id="btnRunMetric" class="button-loading" type="submit">
                        Run
                        <span class="spinner"></span>
                    </button>
                </form>

                <canvas id="metricsChart" width="400" height="200"></canvas>
                <button id="saveRun">Save Metric Run</button>
            </div>

            <div id="metricHistorySection" class="history-section">
                <h1 id="metricHistoryText">Metric History</h1>
                <div id="metricHistoryTable"></div>
            </div>
        </div>

    </body>
</html>

<script src="https://cdn.jsdelivr.net/npm/vanilla-datatables@latest/dist/vanilla-dataTables.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
@vite('public/js/pageSpeed.js')