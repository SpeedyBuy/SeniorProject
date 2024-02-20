import 'package:flutter/material.dart';
import 'package:speedy_buy_senior/screens/layout/auth_screen.dart';
import 'package:speedy_buy_senior/screens/layout/categories_screen.dart';
import 'package:speedy_buy_senior/screens/layout/favorites_screen.dart';
import 'package:speedy_buy_senior/screens/layout/home_screen.dart';
import 'package:speedy_buy_senior/screens/layout/my_cart_screen.dart';
import '../../constant.dart';

// ignore: must_be_immutable
class HomeLayout extends StatefulWidget {
  HomeLayout({
    Key? key,
    required this.index,
  }) : super(key: key);
  int index;
  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  NavigationDestinationLabelBehavior labelBehavior =
      NavigationDestinationLabelBehavior.alwaysShow;

  final List<Widget> screens = [
    const HomeScreen(),
    const CategoriesScreen(),
    const FavoritesScreen(),
    const AuthScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: mainColor,
        centerTitle: false,
        title: const Text(
          "Speedy-Buy",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 23,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 20.0,
              top: 5,
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyCartScreen(),
                    ));
              },
              child: const Icon(
                Icons.shopping_bag_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ],
      ),
      body: screens[widget.index],
      bottomNavigationBar: NavigationBar(
        height: 65,
        backgroundColor: Colors.grey[200],
        indicatorColor: mainColor.withOpacity(.4),
        labelBehavior: labelBehavior,
        selectedIndex: widget.index,
        onDestinationSelected: (int index) {
          setState(() {
            widget.index = index;
          });
        },
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.grid_view),
            label: 'Categories',
          ),
          NavigationDestination(
            icon: Icon(Icons.favorite_outline_outlined),
            label: 'Favorite',
          ),
          NavigationDestination(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
