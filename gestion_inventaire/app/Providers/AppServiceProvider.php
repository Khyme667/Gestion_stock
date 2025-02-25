<?php

namespace App\Providers;

use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Gate;

class AuthServiceProvider extends ServiceProvider
{
    protected $policies = [
        // 'App\Models\Model' => 'App\Policies\ModelPolicy',
    ];

    public function boot(): void
    {
        $this->registerPolicies();

        // Gate pour les administrateurs uniquement
        Gate::define('admin', function ($user) {
            return $user->role === 'admin';
        });

        // Gate pour les employés et administrateurs
        Gate::define('manage-inventory', function ($user) {
            return in_array($user->role, ['admin', 'employee']);
        });
    }
}