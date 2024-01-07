import 'package:craftybay/presentation/ui/screens/carts_screen.dart';
import 'package:craftybay/presentation/ui/screens/categories_screen.dart';
import 'package:craftybay/presentation/ui/screens/home_screen.dart';
import 'package:craftybay/presentation/ui/screens/wishlist_screen.dart';
import 'package:craftybay/presentation/ui/utility/app_colors.dart';
import 'package:flutter/material.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  int _selectedIndex = 0;
  final List<Widget> _screen = const [
    HomeScreen(),
    CategoriesScreen(),
    CartsScreen(),
    WishlistScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: (Index) {
          _selectedIndex = Index;
          if (mounted) {
            setState(() {});
          }
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard_outlined), label: 'Categories'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Carts'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Wishlist'),
        ],
      ),
    );
  }
}
