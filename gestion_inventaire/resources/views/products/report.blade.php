@extends('layouts.main')

@section('content')
    <div class="container">
        <h1 class="text-2xl font-bold mb-4">Rapport des Produits en Rupture</h1>

        <form method="GET" action="{{ route('products.report') }}" id="thresholdForm" class="mb-4">
            <div class="row align-items-center">
                <div class="col-md-6">
                    <label for="threshold" class="form-label">Seuil de stock faible :</label>
                    <input type="number" class="form-control d-inline w-auto" id="threshold" name="threshold" 
                           value="{{ old('threshold', $lowStockThreshold) }}" min="1" required>
                </div>
                <div class="col-md-6 text-md-end mt-3 mt-md-0">
                    <button type="submit" class="btn btn-primary me-2">Actualiser</button>
                    <a href="{{ route('products.report', ['export' => 'pdf', 'threshold' => $lowStockThreshold]) }}" 
                       class="btn btn-success">Exporter en PDF</a>
                    <a href="{{ route('dashboard') }}" class="btn btn-secondary">Retour au tableau de bord</a>
                </div>
            </div>
        </form>

        <p class="mb-4">Produits avec une quantité inférieure à {{ $lowStockThreshold }}</p>

        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nom</th>
                    <th>Catégorie</th>
                    <th>Quantité</th>
                </tr>
            </thead>
            <tbody>
                @forelse ($products as $product)
                    <tr>
                        <td>{{ $product->id }}</td>
                        <td>{{ $product->name }}</td>
                        <td>{{ $product->category->name }}</td>
                        <td class="text-danger">{{ $product->quantity }}</td>
                    </tr>
                @empty
                    <tr>
                        <td colspan="4" class="text-center">Aucun produit en rupture de stock.</td>
                    </tr>
                @endforelse
            </tbody>
        </table>
    </div>
@endsection