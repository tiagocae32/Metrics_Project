<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('metric_history_runs', function (Blueprint $table) {
            $table->id();
            $table->string('url');
            $table->decimal('accessibility', 5, 2)->nullable();
            $table->decimal('pwa', 5, 2)->nullable();
            $table->decimal('performance', 5, 2)->nullable();
            $table->decimal('seo', 5, 2)->nullable();
            $table->decimal('best_practices', 5, 2)->nullable();
            $table->bigInteger('strategy_id')->unsigned();
            $table->timestamps();

            $table->foreign('strategy_id')->references('id')->on('strategies');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('metric_history_runs');
    }
};
