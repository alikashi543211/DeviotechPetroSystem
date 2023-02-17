<?php

namespace App\Http\Middleware;
use Illuminate\Support\Facades\Auth;
use Closure;

class EngineerMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        // dd("Engineer");
        if (!Auth::check())
        return redirect('login');

        $user = Auth::user();

        if($user->role === "engineer")
        {
            return $next($request);
        }
        else
        {
            abort(403, 'Access denied');
        }
    }
}