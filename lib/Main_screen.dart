import 'package:blinkitd_emo/theme/colors.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';
import 'categories_page.dart';
import 'orders_page.dart';
import 'cart_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  // Keep these in the same order as the BottomNavigationBarItems below.
  final List<Widget> _tabs = const [
    HomeBody(),
    CategoriesBody(),
    OrdersBody(),
    CartBody(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BlinkitColors.bg,
      // IndexedStack keeps every tab's state (scroll position, form input,
      // etc.) alive even when it's not the visible one.
      body: IndexedStack(
        index: currentIndex,
        children: _tabs,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: BlinkitColors.green,
        unselectedItemColor: BlinkitColors.grey,
        showUnselectedLabels: true,
        onTap: (index) {
          setState(() => currentIndex = index);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_outlined),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long_outlined),
            label: "Orders",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "Cart",
          ),
        ],
      ),
    );
  }
}