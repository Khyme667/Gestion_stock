@extends('layouts.main')

@section('title', 'Dashboard')

@section('content')
    <div class="container py-12">
        <h1 class="text-3xl font-bold text-gray-800 text-center mb-8">Tableau de bord</h1>

        <div class="row">
            <!-- Card pour la gestion des produits -->
            <div class="col-md-3 mb-4">
                <div class="card shadow-lg hover:shadow-xl transition-shadow duration-300">
                    <div class="card-body text-center p-6">
                        <i class="fas fa-box fa-2x text-indigo-600 mb-3"></i>
                        <h5 class="card-title text-lg font-semibold text-gray-700">Produits</h5>
                        <a href="{{ route('products.index') }}" class="btn btn-primary mt-3">Accéder</a>
                    </div>
                </div>
            </div>

            <!-- Card pour la gestion des catégories -->
            <div class="col-md-3 mb-4">
                <div class="card shadow-lg hover:shadow-xl transition-shadow duration-300">
                    <div class="card-body text-center p-6">
                        <i class="fas fa-folder fa-2x text-indigo-600 mb-3"></i>
                        <h5 class="card-title text-lg font-semibold text-gray-700">Catégories</h5>
                        <a href="{{ route('categories.index') }}" class="btn btn-primary mt-3">Accéder</a>
                    </div>
                </div>
            </div>

            <!-- Card pour les mouvements de stock -->
            <div class="col-md-3 mb-4">
                <div class="card shadow-lg hover:shadow-xl transition-shadow duration-300">
                    <div class="card-body text-center p-6">
                        <i class="fas fa-exchange-alt fa-2x text-indigo-600 mb-3"></i>
                        <h5 class="card-title text-lg font-semibold text-gray-700">Mouvements de Stock</h5>
                        <a href="{{ route('stock_movements.index') }}" class="btn btn-primary mt-3">Accéder</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Styles personnalisés -->
    <style>
        .btn-primary {
            background-color: #4f46e5;
            border-color: #4f46e5;
            transition: all 0.3s ease;
        }
        .btn-primary:hover {
            background-color: #4338ca;
            border-color: #4338ca;
            transform: translateY(-2px);
        }
        .card {
            border-radius: 1rem;
        }
    </style>
@endsection

@section('scripts')
    <!-- Font Awesome déjà inclus dans main.blade.php, ajout d'un script interactif -->
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            const cards = document.querySelectorAll('.card');
            cards.forEach(card => {
                card.addEventListener('mouseenter', () => {
                    card.querySelector('i').classList.add('fa-bounce');
                });
                card.addEventListener('mouseleave', () => {
                    card.querySelector('i').classList.remove('fa-bounce');
                });
            });
        });
    </script>
@endsection