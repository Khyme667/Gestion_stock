@extends('layouts.main')

@section('title', 'Détails du Produit')

@section('content')
    <div class="container py-12">
        <h1 class="text-3xl font-bold text-gray-800 mb-6">Détails du Produit</h1>

        <div class="bg-white shadow-lg rounded-lg p-6">
            <div class="row">
                <div class="col-md-6">
                    <p><strong>ID :</strong> {{ $product->id }}</p>
                    <p><strong>Nom :</strong> {{ $product->name }}</p>
                    <p><strong>Description :</strong> {{ $product->description ?? 'Aucune description' }}</p>
                    <p><strong>Prix :</strong> {{ number_format($product->price, 2) }} MGA</p>
                    <p><strong>Quantité :</strong> {{ $product->quantity }}</p>
                    <p><strong>Catégorie :</strong> {{ $product->category->name }}</p>
                </div>
            </div>

            <div class="mt-4">
                <a href="{{ route('products.index') }}" class="btn btn-primary">Retour à la liste</a>
                <a href="{{ route('products.edit', $product->id) }}" class="btn btn-warning ms-2">Modifier</a>
                <form action="{{ route('products.destroy', $product->id) }}" method="POST" style="display:inline;">
                    @csrf
                    @method('DELETE')
                    <button type="submit" class="btn btn-danger ms-2" onclick="return confirm('Supprimer ce produit ?')">Supprimer</button>
                </form>
            </div>
        </div>
    </div>

    <style>
        .btn-primary {
            background-color: #4f46e5;
            border-color: #4f46e5;
            transition: all 0.3s ease;
        }
        .btn-primary:hover {
            background-color: #4338ca;
            border-color: #4338ca;
        }
        .btn-warning {
            background-color: #f59e0b;
            border-color: #f59e0b;
        }
        .btn-warning:hover {
            background-color: #d97706;
            border-color: #d97706;
        }
        .btn-danger {
            background-color: #ef4444;
            border-color: #ef4444;
        }
        .btn-danger:hover {
            background-color: #dc2626;
            border-color: #dc2626;
        }
    </style>
@endsection