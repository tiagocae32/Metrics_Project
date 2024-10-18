<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MetricHistoryRun extends Model
{
    protected $table = 'metric_history_runs';

    public $timestamps = true;


    protected $fillable = [
        'url',
        'accessibility',
        'pwa',
        'performance',
        'seo',
        'best_practices',
        'strategy_id'
    ];

    public function strategy(){
        return $this->belongsTo(Strategy::class);
    }
}
