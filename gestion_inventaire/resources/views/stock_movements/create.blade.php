@extends('layouts.main')

@section('content')
    <div class="container">
        <h1 class="text-2xl font-bold mb-4">Nouveau Mouvement de Stock</h1>

        @if ($errors->any())
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif

        <form method="POST" action="{{ route('stock_movements.store') }}">
            @csrf
            <div class="mb-3">
                <label for="product_id" class="form-label">Produit</label>
                <select class="form-control" id="product_id" name="product_id" required>
                    <option value="">-- Sélectionner un produit --</option>
                    @foreach ($products as $product)
                        <option value="{{ $product->id }}">{{ $product->name }}</option>
                    @endforeach
                </select>
            </div>
            <div class="mb-3">
                <label for="quantity" class="form-label">Quantité</label>
                <input type="number" class="form-control" id="quantity" name="quantity" value="{{ old('quantity', 1) }}" min="1" required>
            </div>
            <div class="mb-3">
                <label for="type" class="form-label">Type</label>
                <select class="form-control" id="type" name="type" required>
                    <option value="entry">Entrée</option>
                    <option value="exit">Sortie</option>
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Enregistrer</button>
        </form>
    </div>
@endsection