<?php

namespace Tests\Unit;

use Database\Seeders\CategorySeeder;
use Database\Seeders\StrategySeeder;
use Tests\TestCase;
use Illuminate\Foundation\Testing\RefreshDatabase;

class CreateMetricTest extends TestCase
{
    use RefreshDatabase;

    protected function setUp(): void
    {
        parent::setUp();

        $this->seed(CategorySeeder::class);
        $this->seed(StrategySeeder::class);

    }

    /** @test */
    public function it_creates_a_new_metric_success()
    {
        $data = [
            'url' => 'https://www.broobe.com/es/',
            'strategy' => 'DESKTOP',
            'accessibility' => 0.25,
        ];

        $response = $this->post('/saveMetrics', $data);
        $response->assertStatus(200);
    }

    public function it_creates_a_new_metric_fail()
    {
        $data = [
            'url' => 'failUrl',
            'strategy' => 'DESKTOP',
            'accessibility' => 0.25,
        ];

        $response = $this->post('/saveMetrics', $data);
        $response->assertStatus(404);
    }
}
