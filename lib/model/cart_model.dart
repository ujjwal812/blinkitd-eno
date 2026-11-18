import 'package:flutter/material.dart';

/// A single line item inside the cart.
class CartItem {
  final String name;
  final String qty; // display quantity e.g. "1 kg"
  final int price;
  final int mrp;
  final String image;
  int quantity;

  CartItem({
    required this.name,
    required this.qty,
    required this.price,
    required this.mrp,
    required this.image,
    this.quantity = 1,
  });

  int get totalPrice => price * quantity;
}

/// Simple global cart state manager using ChangeNotifier.
/// Any widget can listen to it with AnimatedBuilder(animation: cartModel, ...)
/// so the cart badge / mini-cart-bar / cart screen all stay in sync
/// without any extra package (no `provider` dependency required).
class CartModel extends ChangeNotifier {
  final Map<String, CartItem> _items = {};

  Map<String, CartItem> get items => _items;

  int get totalItems =>
      _items.values.fold(0, (sum, item) => sum + item.quantity);

  int get totalPrice =>
      _items.values.fold(0, (sum, item) => sum + item.totalPrice);

  int get totalMrp =>
      _items.values.fold(0, (sum, item) => sum + (item.mrp * item.quantity));

  int quantityOf(String name) => _items[name]?.quantity ?? 0;

  void addItem({
    required String name,
    required String qty,
    required int price,
    required int mrp,
    required String image,
  }) {
    if (_items.containsKey(name)) {
      _items[name]!.quantity++;
    } else {
      _items[name] = CartItem(
        name: name,
        qty: qty,
        price: price,
        mrp: mrp,
        image: image,
      );
    }
    notifyListeners();
  }

  void incrementItem(String name) {
    if (_items.containsKey(name)) {
      _items[name]!.quantity++;
      notifyListeners();
    }
  }

  void decrementItem(String name) {
    if (_items.containsKey(name)) {
      if (_items[name]!.quantity > 1) {
        _items[name]!.quantity--;
      } else {
        _items.remove(name);
      }
      notifyListeners();
    }
  }

  void removeItem(String name) {
    _items.remove(name);
    notifyListeners();
  }

  void clearCart() {
    _items.clear();
    notifyListeners();
  }
}

/// Single shared instance used across the whole app.
final CartModel cartModel = CartModel();