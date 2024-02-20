import 'package:flutter/material.dart';
import 'package:speedy_buy_senior/components/category_component.dart';
import 'package:speedy_buy_senior/constant.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  List<String> listCategoriesName = [
    'Electronics',
    'Fashion',
    'Sports & Outdoors',
    'Home & Kitchen',
    'New Arrivals',
  ];
  List<String> listSubCategoriesImage = [
    'assets/images/wash.png',
    'assets/images/jacket.png',
    'assets/images/chair.png',
    'assets/images/home_kitchen.png',
    'assets/images/new_arrival.png',
  ];
  List<String> listSubCategoriesName = [
    'Wash',
    'Leather Jacket',
    'Chair',
    'Cooker',
    'New Arrivals',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.separated(
        itemCount: 5,
        separatorBuilder: (context, index) {
          return const Divider(
            thickness: 0.3,
            color: greyColor,
          );
        },
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: CategoryComponent(
              categoryName: listCategoriesName[index],
              imageSubCategory: listSubCategoriesImage[index],
              subCategoryName: listSubCategoriesName[index],
            ),
          );
        },
      ),
    );
  }
}
