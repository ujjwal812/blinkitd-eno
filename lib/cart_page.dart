import 'package:flutter/material.dart';

// ---------- CART TAB BODY ----------
// Extracted from your CartPage's `body:` — no Scaffold/AppBar here,
// MainScreen provides those. Swap in your real Cart UI whenever you're
// ready; just keep the class name CartBody (or update main_screen.dart
// to match whatever you rename it to).
class CartBody extends StatelessWidget {
  const CartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text(
              "Cart",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const Expanded(
            child: Center(
              child: Text(
                "Cart Screen",
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
        ],
      ),
    );
  }
}