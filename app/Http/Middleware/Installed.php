<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class Installed
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {

        $route = $request->routeIs('installer.*');
        $config = config('app.installed');

        if($route) {
            switch($config) {
                case false:
                    return $next($request);
                    break;
                case true:
                    return redirect(route('home.index'));
                    break;
            }
        } else if (!$route) {
            switch($config) {
                case false:
                    return redirect(route('installer.index'));
                    break;
                case true:
                    return $next($request);
                    break;
            }
        }
    }
}
