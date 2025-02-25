<?php

namespace App\Http\Controllers;

use App\Models\StockMovement;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class StockMovementController extends Controller
{
    public function index()
    {
        $movements = StockMovement::with(['product', 'user'])->paginate(10);
        return view('stock_movements.index', compact('movements'));
    }

    public function create()
    {
        $products = Product::all();
        return view('stock_movements.create', compact('products'));
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'product_id' => 'required|exists:products,id',
            'quantity' => 'required|integer|min:1',
            'type' => 'required|in:entry,exit',
        ]);

        $movement = StockMovement::create([
            'product_id' => $validated['product_id'],
            'user_id' => Auth::id(),
            'quantity' => $validated['quantity'],
            'type' => $validated['type'],
        ]);

        // Mettre à jour la quantité du produit
        $product = Product::find($validated['product_id']);
        if ($validated['type'] === 'entry') {
            $product->quantity += $validated['quantity'];
        } else {
            $product->quantity -= $validated['quantity'];
        }
        $product->save();

        return redirect()->route('stock_movements.index')->with('success', 'Mouvement de stock enregistré.');
    }
}