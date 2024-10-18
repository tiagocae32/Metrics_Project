<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\PageSpeedController;

Route::get('/', [HomeController::class, 'index'])->name('home');
Route::get('getMetrics', [PageSpeedController::class, 'getMetrics'])->name('getMetrics');
Route::get('getMyMetrics', [PageSpeedController::class, 'getMyMetrics'])->name('myMetrics');
Route::post('saveMetrics', [PageSpeedController::class, 'saveMetrics'])->name('saveMetrics');
