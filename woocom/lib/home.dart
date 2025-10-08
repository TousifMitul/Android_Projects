import 'package:flutter/material.dart';
import 'package:woocom/comps/circle.dart';
import 'package:woocom/data/category.dart';
import 'package:woocom/pages/landing.dart';

import 'comps/navbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const LandingPage(),

  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 2,
          title: Row(
            children: [
              Icon(Icons.store, size: 30, color: Colors.purpleAccent),
              const SizedBox(width: 8),
              const Text(
                "WooCommerce",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search, color: Colors.black),
              onPressed: () {
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.notifications_active_outlined,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            const SizedBox(width: 10),
          ],
        ),
        body: _pages[_selectedIndex],
        bottomNavigationBar: MyBottomNav(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
        ),
      ),
    );
  }
}