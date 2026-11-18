import 'package:flutter/material.dart';
import 'Main_screen.dart';

void main() {
  runApp(const BlinkitApp());
}

class BlinkitApp extends StatelessWidget {
  const BlinkitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blinkit Demo',
      theme: ThemeData(useMaterial3: true),
      // 👇 This is the key change: point home at MainScreen, not HomePage.
      home: const MainScreen(),
    );
  }
}