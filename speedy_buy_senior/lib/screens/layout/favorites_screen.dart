import 'package:flutter/material.dart';
import 'package:speedy_buy_senior/components/favorites_cart.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  List<String> listName = [
    'nike',
    'adidas',
    'puma',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return const FavoritesCart();
        },
      ),
    );
  }
}
