<?php

namespace App\Http\Middleware;

use Closure;
use Auth;

class check_user
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
        $user=Auth::user();
        if(isset($user) && $user->user_active == 1 &&$user->user_type=="user"){
            return $next($request);
        }
        return redirect("/");
    }
}
