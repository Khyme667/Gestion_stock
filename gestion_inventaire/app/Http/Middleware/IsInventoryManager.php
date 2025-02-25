<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class IsInventoryManager
{
    public function handle(Request $request, Closure $next): Response
    {
        if ($request->user() && in_array($request->user()->role, ['admin', 'employee'])) {
            return $next($request);
        }

        abort(403, 'Vous n\'avez pas accès à cette page.');
    }
}