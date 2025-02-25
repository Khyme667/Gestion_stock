@extends('layouts.main')

@section('content')
    <div class="container">
        <h1 class="text-2xl font-bold mb-4">Historique des Mouvements de Stock</h1>

        @if (session('success'))
            <div class="alert alert-success mb-4">
                {{ session('success') }}
            </div>
        @endif

        <div class="mb-4">
            <a href="{{ route('stock_movements.create') }}" class="btn btn-primary">Nouveau mouvement</a>
        </div>

        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Produit</th>
                    <th>Utilisateur</th>
                    <th>Quantité</th>
                    <th>Type</th>
                    <th>Date</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($movements as $movement)
                    <tr>
                        <td>{{ $movement->id }}</td>
                        <td>{{ $movement->product->name }}</td>
                        <td>{{ $movement->user->name }}</td>
                        <td>{{ $movement->quantity }}</td>
                        <td>{{ ucfirst($movement->type === 'entry' ? 'Entrée' : 'Sortie') }}</td>
                        <td>{{ $movement->created_at->format('d/m/Y H:i') }}</td>
                    </tr>
                @endforeach
            </tbody>
        </table>

        {{ $movements->links() }}
    </div>
@endsection