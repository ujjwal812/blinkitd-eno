import 'package:flutter/material.dart';

// ---------- CATEGORIES TAB BODY ----------
// No Scaffold, no AppBar back button — MainScreen owns the Scaffold and
// the bottom nav. This widget is only ever swapped in via IndexedStack,
// never pushed, so there's nothing to "go back" from.
class CategoriesBody extends StatelessWidget {
  const CategoriesBody({super.key});

  final List<Map<String, dynamic>> categories = const [
    {
      'title': 'Vegetables & Fruits',
      'image': 'assets/images/apple.jpg',
      'count': '120 Items'
    },
    {
      'title': 'Dairy & Bread',
      'image': 'assets/images/bread.jpg',
      'count': '85 Items'
    },
    {
      'title': 'Munchies & Chips',
      'image': 'assets/images/chips2.jpg',
      'count': '64 Items'
    },
    {
      'title': 'Cold Drinks & Juices',
      'image': 'assets/images/cold_drink.jpg',
      'count': '43 Items'
    },
    {
      'title': 'Biskits',
      'image': 'assets/images/biskut.jpg',
      'count': '92 Items'
    },
    {
      'title': 'Bakery & Cakes',
      'image': 'assets/images/cake.jpg',
      'count': '38 Items'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Simple top title bar (replaces the old AppBar; no back arrow
            // needed since this is a tab, not a pushed page).
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Text(
                'Blinkit Demo',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),

            // Search Bar
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.withOpacity(0.2)),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Search "milk", "bread" or "chips"',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                  prefixIcon: Icon(Icons.search_rounded, color: Colors.black54),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 14),
                ),
              ),
            ),

            const SizedBox(height: 24),
            const Text(
              'Shop by Category',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
                letterSpacing: 0.3,
              ),
            ),
            const SizedBox(height: 14),

            Expanded(
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 14,
                  childAspectRatio: 0.76,
                ),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final item = categories[index];
                  return CategoryCard(
                    title: item['title'],
                    imagePath: item['image'],
                    count: item['count'],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title;
  final String? imagePath;
  final String count;

  const CategoryCard({
    super.key,
    required this.title,
    this.imagePath,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        debugPrint("Selected Category: $title");
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xffE8F5E9).withOpacity(0.4),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.green.withOpacity(0.08)),
        ),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding:
                const EdgeInsets.only(top: 12.0, left: 10.0, right: 10.0),
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: imagePath != null
                        ? Image.asset(
                      imagePath!,
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(Icons.fastfood_rounded,
                            color: Colors.green, size: 36);
                      },
                    )
                        : const Icon(Icons.fastfood_rounded,
                        color: Colors.green, size: 36),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.black87,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    count,
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 11,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}