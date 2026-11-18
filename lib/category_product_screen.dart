import 'package:flutter/material.dart';
import '../theme/colors.dart';
import 'add_button.dart';

class CategoryProductsScreen extends StatelessWidget {
  final String title;
  final List<Map<String, dynamic>> products;

  const CategoryProductsScreen({
    super.key,
    required this.title,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BlinkitColors.bg,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        foregroundColor: BlinkitColors.black,
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: BlinkitColors.black,
          ),
        ),
      ),
      body: products.isEmpty
          ? const Center(
        child: Text(
          "No products in this category yet",
          style: TextStyle(color: BlinkitColors.grey),
        ),
      )
          : GridView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 0.62,
        ),
        itemBuilder: (context, index) {
          final item = products[index];
          final int mrp = item["mrp"] ?? 0;
          final int price = item["price"] ?? 0;
          final int discount =
          mrp > 0 ? (((mrp - price) / mrp) * 100).round() : 0;

          return Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: Colors.grey.shade200),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (item["time"] != null)
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 6, vertical: 3),
                    decoration: BoxDecoration(
                      color: BlinkitColors.lightGreen,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      item["time"],
                      style: const TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.w700,
                        color: BlinkitColors.green,
                      ),
                    ),
                  ),
                const SizedBox(height: 6),
                Expanded(
                  child: Stack(
                    children: [
                      Center(
                        child: Image.asset(
                          item["image"],
                          fit: BoxFit.contain,
                          height: 90,
                          errorBuilder: (context, error, stackTrace) =>
                          const Icon(Icons.shopping_bag_outlined,
                              size: 60, color: BlinkitColors.grey),
                        ),
                      ),
                      if (discount > 0)
                        Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 2),
                            color: BlinkitColors.green,
                            child: Text(
                              "$discount% OFF",
                              style: const TextStyle(
                                fontSize: 9,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  item["name"] ?? "",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontSize: 12.5, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 2),
                Text(
                  item["qty"] ?? "",
                  style: const TextStyle(
                      fontSize: 11, color: BlinkitColors.grey),
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "₹$price",
                            style: const TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 13,
                            ),
                          ),
                          if (discount > 0)
                            Text(
                              "₹$mrp",
                              style: const TextStyle(
                                fontSize: 10,
                                color: BlinkitColors.grey,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                        ],
                      ),
                    ),
                    const AddButton(),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}