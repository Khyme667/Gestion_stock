<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Rapport des Produits en Rupture</title>
    <style>
        body { font-family: Arial, sans-serif; }
        h1 { color: #333; text-align: center; }
        table { width: 100%; border-collapse: collapse; margin-top: 20px; }
        th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }
        th { background-color: #f2f2f2; }
        .text-danger { color: red; }
    </style>
</head>
<body>
    <h1>Rapport des Produits en Rupture</h1>
    <p>Produits avec une quantité inférieure à {{ $lowStockThreshold }}</p>
    <table>
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
                    <td colspan="4">Aucun produit en rupture de stock.</td>
                </tr>
            @endforelse
        </tbody>
    </table>
</body>
</html>