<?php

namespace App\Http\Controllers;

use App\Http\Requests\PageSpeedRequest;
use GuzzleHttp\Client;
use App\Models\MetricHistoryRun;
use App\Models\Strategy;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;

class PageSpeedController extends Controller {


    public function getMetrics(Request $request) {
        try{
            $client = new Client();
            $url = $request->input('url');
            $categories = implode('&category=', $request->input('categories'));
            $strategy = $request->input('strategy');
            
            $apiUrl = "https://www.googleapis.com/pagespeedonline/v5/runPagespeed?url={$url}&key=AIzaSyDCrPAzhzWxZbJxPYIEURODTvBFVVRNHbY&category={$categories}&strategy={$strategy}";
            
            $response = $client->get($apiUrl);
            $data = json_decode($response->getBody(), true);
            
            $categories = $data['lighthouseResult']['categories'];

            $metrics = [
                'accessibility' => $categories['accessibility']['score'] ?? null,
                'pwa' => $categories['pwa']['score'] ?? null,
                'performance' => $categories['performance']['score'] ?? null,
                'seo' => $categories['seo']['score'] ?? null,
                'best_practices' => $categories['best-practices']['score'] ?? null,
                'url' => $url,
                'strategy' => $strategy
            ];
        }catch(Exception $exception){
            throw new Exception($exception->getMessage(), $exception->getCode());
        }

        return response()->json($metrics);
    }

    public function getMyMetrics()
    {
        try {
            $data = Cache::remember('metric_history_run', 60, function () {
                return MetricHistoryRun::with(['strategy'])->get();
            });
        } catch (Exception $exception) {
            throw new Exception($exception->getMessage(), $exception->getCode());
        }
    
        return response()->json($data);
    }
    
    public function saveMetrics(PageSpeedRequest $request) {
        try{
            $data = $request->validated();
            $data['strategy_id'] = Strategy::where('name', $data['strategy'])->first()->id;
            $newMetric = new MetricHistoryRun($data);
            $newMetric->save();
        }catch(Exception $exception){
            throw new Exception($exception->getMessage(), $exception->getCode());
        }
        return response()->json(['data' => $newMetric]);
    }

}