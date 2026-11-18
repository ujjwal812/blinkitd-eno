import 'package:blinkitd_emo/theme/colors.dart';
import 'package:flutter/material.dart';

import 'add_button.dart';
import 'category_product_screen.dart';


class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  // ---------- DATA (swap these paths with your own files inside assets/images) ----------
  final List<Map<String, String>> banners = const [
    {"image": "assets/images/banner1.jpg"},
    {"image": "assets/images/banner2.jpg"},
    {"image": "assets/images/banner3.jpg"},
  ];

  final List<Map<String, String>> categories = const [
    {"name": "Vegetables\n& Fruits", "image": "assets/images/fruits.jpg"},
    {"name": "Atta, Rice\n& Dal", "image": "assets/images/atta.jpg"},
    {"name": "Oil, Ghee\n& Masala", "image": "assets/images/oil_ghee.jpg"},
    {"name": "Dairy, Bread\n& Eggs", "image": "assets/images/deilybread.jpg"},
    {"name": "Bakery &\nBiscuits", "image": "assets/images/BakeryBiskcuits.jpg"},
    {"name": "Dry Fruits &\nCereals", "image": "assets/images/Dry_fruits.jpg"},
    {"name": "Chicken, Meat\n& Fish", "image": "assets/images/Chicken_meat.jpg"},
    {"name": "Kitchenware &\nAppliances", "image": "assets/images/kitchenware.jpg"},
  ];

  final List<Map<String, dynamic>> products = const [
    {
      "name": "Fresh Apple",
      "qty": "1 kg",
      "price": 120,
      "mrp": 150,
      "time": "8 MINS",
      "image": "assets/images/apple.jpg",
    },
    {
      "name": "Robusta Banana",
      "qty": "6 pcs",
      "price": 60,
      "mrp": 70,
      "time": "8 MINS",
      "image": "assets/images/bananaa.jpg",
    },
    {
      "name": "Green Guava",
      "qty": "6 pcs",
      "price": 60,
      "mrp": 70,
      "time": "8 MINS",
      "image": "assets/images/guavaa.jpg",
    },
    {
      "name": "Dragon Fruts",
      "qty": "6 pcs",
      "price": 60,
      "mrp": 70,
      "time": "8 MINS",
      "image": "assets/images/dra.jpg",
    },
    {
      "name": "Fresh Orange",
      "qty": "1 kg",
      "price": 90,
      "mrp": 110,
      "time": "10 MINS",
      "image": "assets/images/orangee.jpg",
    },
    {
      "name": "Alphonso Mango",
      "qty": "1 kg",
      "price": 150,
      "mrp": 190,
      "time": "10 MINS",
      "image": "assets/images/mango2.jpg",
    },
  ];

  final List<Map<String, dynamic>> dryfruits = const [
    {
      "name": "Almonds",
      "qty": "1 kg",
      "price": 120,
      "mrp": 150,
      "time": "8 MINS",
      "image": "assets/images/Almonds.jpg",
    },
    {
      "name": "Robusta Banana",
      "qty": "6 pcs",
      "price": 60,
      "mrp": 70,
      "time": "8 MINS",
      "image": "assets/images/bananaa.jpg",
    },
    {
      "name": "Green Guava",
      "qty": "6 pcs",
      "price": 60,
      "mrp": 70,
      "time": "8 MINS",
      "image": "assets/images/guavaa.jpg",
    },
    {
      "name": "Dragon Fruts",
      "qty": "6 pcs",
      "price": 60,
      "mrp": 70,
      "time": "8 MINS",
      "image": "assets/images/dra.jpg",
    },
    {
      "name": "Fresh Orange",
      "qty": "1 kg",
      "price": 90,
      "mrp": 110,
      "time": "10 MINS",
      "image": "assets/images/orangee.jpg",
    },
    {
      "name": "Alphonso Mango",
      "qty": "1 kg",
      "price": 150,
      "mrp": 190,
      "time": "10 MINS",
      "image": "assets/images/mango2.jpg",
    },
  ];

  final List<Map<String, dynamic>> vegetableproducts = const [
    {
      "name": "Fresh Tomato",
      "qty": "1 kg",
      "price": 40,
      "mrp": 55,
      "time": "8 MINS",
      "image": "assets/images/tamato.jpg",
    },
    {
      "name": "Fresh Potato",
      "qty": "1 kg",
      "price": 30,
      "mrp": 40,
      "time": "8 MINS",
      "image": "assets/images/patato.jpg",
    },
    {
      "name": "Fresh Onion",
      "qty": "1 kg",
      "price": 35,
      "mrp": 45,
      "time": "8 MINS",
      "image": "assets/images/onion.jpg",
    },
    {
      "name": "Cauliflower",
      "qty": "1 pc",
      "price": 45,
      "mrp": 60,
      "time": "10 MINS",
      "image": "assets/images/cauliflower.jpg",
    },
    {
      "name": "Fresh Cabbage",
      "qty": "1 pc",
      "price": 30,
      "mrp": 40,
      "time": "10 MINS",
      "image": "assets/images/cabbage.jpg",
    },
    {
      "name": "Green Capsicum",
      "qty": "500 g",
      "price": 50,
      "mrp": 65,
      "time": "10 MINS",
      "image": "assets/images/capsicum.jpg",
    },
    {
      "name": "Fresh Carrot",
      "qty": "500 g",
      "price": 35,
      "mrp": 45,
      "time": "10 MINS",
      "image": "assets/images/carrtot.jpg",
    },
    {
      "name": "Lady Finger",
      "qty": "500 g",
      "price": 40,
      "mrp": 55,
      "time": "10 MINS",
      "image": "assets/images/lady_finger.jpg",
    },
  ];

  final List<Map<String, String>> snacksDrinks = const [
    {"name": "Chips", "image": "assets/images/chips.jpg"},
    {"name": "Sweets Chocolates", "image": "assets/images/chocolates1.jpg"},
    {"name": "Drinks Juices", "image": "assets/images/juices.jpg"},
    {"name": "Biscuite", "image": "assets/images/biskit.jpg"},
    {"name": "Instant Food", "image": "assets/images/meagi.jpg"},
    {"name": "Sauces", "image": "assets/images/souces.jpg"},
    {"name": "Paan Corner", "image": "assets/images/paan.jpg"},
    {"name": "Ice CreamsMore", "image": "assets/images/ice_cream.jpg"},
  ];

  // ---------- CATEGORY -> PRODUCT LIST MAPPING ----------
  // Wire a category name to its product list here. "Vegetables\n& Fruits"
  // is done for you below. When you build out another category's products
  // (e.g. a `attaRiceDal` list, `oilGheeMasala` list, etc.), just add an
  // entry here — no other code changes needed, _categoryGrid() below reads
  // from this map automatically.
  Map<String, List<Map<String, dynamic>>> get _categoryProducts => {
    "Vegetables\n& Fruits": vegetableproducts,
    // "Atta, Rice\n& Dal": attaRiceDalProducts,
    // "Oil, Ghee\n& Masala": oilGheeMasalaProducts,
    // "Dairy, Bread\n& Eggs": dairyBreadEggsProducts,
    // "Bakery &\nBiscuits": bakeryBiscuitsProducts,
    // "Dry Fruits &\nCereals": dryfruits,
    // "Chicken, Meat\n& Fish": chickenMeatFishProducts,
    // "Kitchenware &\nAppliances": kitchenwareProducts,
  };

  @override
  Widget build(BuildContext context) {
    // NOTE: No Scaffold here — MainScreen already provides one.
    return Container(
      color: BlinkitColors.bg,
      child: SafeArea(
        child: CustomScrollView(
          slivers: [
            // ---------- TOP DELIVERY BAR + SEARCH (pinned) ----------
            SliverAppBar(
              backgroundColor: Colors.white,
              pinned: true,
              floating: true,
              elevation: 0.5,
              toolbarHeight: 110,
              automaticallyImplyLeading: false,
              title: _topBar(),
            ),

            // ---------- BODY ----------
            SliverList(
              delegate: SliverChildListDelegate([
                const SizedBox(height: 12),
                _bannerCarousel(),
                const SizedBox(height: 18),
                _sectionTitle("Categories"),
                const SizedBox(height: 12),
                _categoryGrid(context),
                const SizedBox(height: 22),
                _sectionTitle("Fresh Fruits", actionText: "see all"),
                const SizedBox(height: 12),
                _productList(context, products),
                const SizedBox(height: 22),
                _sectionTitle("Fresh Vegetable", actionText: "see all"),
                const SizedBox(height: 12),
                _productList(context, vegetableproducts),
                const SizedBox(height: 22),
                _sectionTitle("Dry Fruits & Cereals", actionText: "see all"),
                const SizedBox(height: 12),
                _productList(context, dryfruits),
                const SizedBox(height: 12),
                _snacksDrinksSection(),
                const SizedBox(height: 12),
                _promoStrip(),
                const SizedBox(height: 18),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  Widget _snacksDrinksSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Snacks & Drinks",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: snacksDrinks.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 12,
              mainAxisSpacing: 15,
              childAspectRatio: 0.55,
            ),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xffEDF8F9),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(
                          snacksDrinks[index]["image"]!,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    snacksDrinks[index]["name"]!,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }

  // ---------- TOP BAR ----------
  Widget _topBar() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Text(
                        "Delivery in 8 minutes",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: BlinkitColors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Flexible(
                        child: Text(
                          "Home - 221B, Baker Street, Patna, Bihar",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 13,
                            color: BlinkitColors.grey,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const Icon(Icons.keyboard_arrow_down,
                          size: 18, color: BlinkitColors.grey),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: BlinkitColors.lightGreen,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(Icons.person_outline,
                  color: BlinkitColors.green, size: 24),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Container(
          height: 44,
          decoration: BoxDecoration(
            color: BlinkitColors.bg,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: const Row(
            children: [
              SizedBox(width: 12),
              Icon(Icons.search, color: BlinkitColors.grey),
              SizedBox(width: 8),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search "atta"',
                    hintStyle: TextStyle(color: BlinkitColors.grey),
                    border: InputBorder.none,
                    isDense: true,
                  ),
                ),
              ),
              Icon(Icons.mic_none, color: BlinkitColors.grey),
              SizedBox(width: 12),
            ],
          ),
        ),
      ],
    );
  }

  // ---------- BANNER CAROUSEL ----------
  Widget _bannerCarousel() {
    return SizedBox(
      height: 150,
      child: PageView.builder(
        itemCount: banners.length,
        controller: PageController(viewportFraction: 0.92),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                banners[index]["image"]!,
                fit: BoxFit.cover,
                width: double.infinity,
                errorBuilder: (context, error, stackTrace) => Container(
                  color: BlinkitColors.yellow,
                  alignment: Alignment.center,
                  child: const Text(
                    "Add banner image in\nassets/images/",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  // ---------- SECTION TITLE ----------
  Widget _sectionTitle(String title, {String? actionText}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: BlinkitColors.black,
            ),
          ),
          if (actionText != null)
            Text(
              actionText,
              style: const TextStyle(
                color: BlinkitColors.green,
                fontWeight: FontWeight.w600,
                fontSize: 13,
              ),
            ),
        ],
      ),
    );
  }

  // ---------- CATEGORY GRID ----------
  // Each tile is now wrapped in a GestureDetector. Tapping it pushes a full
  // CategoryProductsScreen. Because this uses Navigator.push (not the
  // bottom-nav's IndexedStack), the screen's back button works normally —
  // it just pops back to whichever tab you were on.
  Widget _categoryGrid(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: categories.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 4,
          mainAxisSpacing: 12,
          childAspectRatio: 0.78,
        ),
        itemBuilder: (context, index) {
          final cat = categories[index];
          final catName = cat["name"]!;

          return GestureDetector(
            onTap: () => _onCategoryTap(context, catName),
            child: Column(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      color: BlinkitColors.lightGreen,
                      child: Image.asset(
                        cat["image"]!,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                        const Icon(Icons.image_outlined,
                            color: BlinkitColors.green, size: 30),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  catName,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: const TextStyle(
                      fontSize: 11.5, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void _onCategoryTap(BuildContext context, String catName) {
    final products = _categoryProducts[catName];

    if (products == null) {
      // No product list wired up for this category yet — build one and
      // add it to _categoryProducts above.
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            "${catName.replaceAll('\n', ' ')} screen coming soon",
          ),
          duration: const Duration(seconds: 1),
        ),
      );
      return;
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => CategoryProductsScreen(
          title: catName.replaceAll('\n', ' '),
          products: products,
        ),
      ),
    );
  }

  // ---------- PRODUCT LIST ----------
  Widget _productList(
      BuildContext context, List<Map<String, dynamic>> items) {
    return SizedBox(
      height: 240,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: items.length,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          final item = items[index];
          final int mrp = item["mrp"];
          final int price = item["price"];
          final int discount =
          mrp > 0 ? (((mrp - price) / mrp) * 100).round() : 0;

          return Container(
            width: 150,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: Colors.grey.shade200),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
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
                  item["name"],
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontSize: 12.5, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 2),
                Text(
                  item["qty"],
                  style:
                  const TextStyle(fontSize: 11, color: BlinkitColors.grey),
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

  // ---------- PROMO STRIP ----------
  Widget _promoStrip() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: 90,
        decoration: BoxDecoration(
          color: BlinkitColors.yellow,
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: const [
            Expanded(
              child: Text(
                "Bulk orders?\nSave more with Blinkit Bulk",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 15,
                  color: BlinkitColors.black,
                ),
              ),
            ),
            Icon(Icons.local_shipping_outlined,
                size: 36, color: BlinkitColors.black),
          ],
        ),
      ),
    );
  }
}