<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestion Hospitalière</title>
    <!-- Lien vers le fichier CSS de Bootstrap -->
    <link href="{{ asset('build/assets/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('build/assets/fontawesome/css/all.min.css') }}" rel="stylesheet">

        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.bunny.net">
        <link href="https://fonts.bunny.net/css?family=figtree:400,500,600&display=swap" rel="stylesheet" />

        <!-- Script Bootstrap JS -->
        <script src="{{ asset('build/assets/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
        <link href="{{ asset('build/assets/fontawesome/css/all.min.js') }}" rel="stylesheet">



        <!-- Scripts -->
        @vite(['resources/css/app.css', 'resources/js/app.js'])
    </head>
    <body class="font-sans antialiased">
        <div class="min-h-screen bg-gray-100">
            @include('layouts.navigation')

    <!-- Contenu de la page -->
    <div class="container mt-4">
        @yield('content')
    </div>

    <!-- Script Bootstrap JS -->
    <script src="{{ asset('build/assets/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
</body>
</html>
