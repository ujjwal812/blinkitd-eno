import 'package:flutter/material.dart';

import '../theme/colors.dart';

// ---------- BLINKIT-STYLE "ADD" BUTTON WITH QTY STEPPER ----------
// Extracted out of home_body.dart so any screen (home, category product
// grids, search results, etc.) can reuse it without importing the whole
// home file.
class AddButton extends StatefulWidget {
  const AddButton({super.key});

  @override
  State<AddButton> createState() => _AddButtonState();
}

class _AddButtonState extends State<AddButton> {
  int qty = 0;

  @override
  Widget build(BuildContext context) {
    if (qty == 0) {
      return SizedBox(
        width: 60,
        height: 32,
        child: OutlinedButton(
          onPressed: () => setState(() => qty = 1),
          style: OutlinedButton.styleFrom(
            foregroundColor: BlinkitColors.green,
            side: const BorderSide(color: BlinkitColors.green),
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: const Text(
            "ADD",
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 12),
          ),
        ),
      );
    }

    return Container(
      width: 70,
      height: 32,
      decoration: BoxDecoration(
        color: BlinkitColors.green,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () => setState(() => qty--),
            child: const SizedBox(
              width: 22,
              child: Icon(Icons.remove, color: Colors.white, size: 16),
            ),
          ),
          Text(
            "$qty",
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 12,
            ),
          ),
          InkWell(
            onTap: () => setState(() => qty++),
            child: const SizedBox(
              width: 22,
              child: Icon(Icons.add, color: Colors.white, size: 16),
            ),
          ),
        ],
      ),
    );
  }
}