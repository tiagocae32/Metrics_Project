<?php

namespace App\Http\Requests;

use App\Models\Strategy;
use Illuminate\Foundation\Http\FormRequest;

class PageSpeedRequest extends FormRequest
{
    public function authorize(): bool
    {
        return true;
    }

    public function rules() : array {
        return [
            'url' => 'required|url',
            'accessibility' => 'nullable|numeric',
            'seo' => 'nullable|numeric',
            'pwa' => 'nullable|numeric',
            'best_practices' => 'nullable|numeric',
            'performance' => 'nullable|numeric',
            'strategy' => 'required|in:' . implode(',', Strategy::pluck('name')->toArray()),
        ];
    }
    
    public function messages() : array {
        return [
            'url.required' => __('The URL is required.'),
            'url.url' => __('Please enter a valid URL.'),
            'categories.required' => __('Please select at least one category.'),
            'categories.*.in' => __('Invalid category selected.'),
            'strategy.required' => __('Please select a strategy.'),
            'strategy.in' => __('Invalid strategy selected.'),
        ];
    }
    
}