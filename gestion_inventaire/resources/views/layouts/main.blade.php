<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestion d'Inventaire - @yield('title')</title>

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=figtree:400,500,600&display=swap" rel="stylesheet" />

    <!-- Bootstrap CSS -->
    <link href="{{ asset('build/assets/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">

    <!-- Font Awesome CSS -->
    <link href="{{ asset('build/assets/fontawesome/css/all.min.css') }}" rel="stylesheet">

    <!-- Vite pour Tailwind et autres assets -->
    @vite(['resources/css/app.css', 'resources/js/app.js'])
</head>
<body class="font-sans antialiased">
    <div class="min-h-screen bg-gray-100">
        @include('layouts.navigation')

        <!-- Contenu de la page -->
        <div class="container mt-4">
            @yield('content')
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="{{ asset('build/assets/bootstrap/js/bootstrap.bundle.min.js') }}"></script>

    <!-- Scripts supplémentaires -->
    @yield('scripts')
</body>
</html>