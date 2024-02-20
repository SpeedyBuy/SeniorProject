import 'package:flutter/material.dart';
import 'package:speedy_buy_senior/constant.dart';
import 'package:speedy_buy_senior/screens/layout/home_layout.dart';

// ignore: must_be_immutable
class CategoryComponent extends StatefulWidget {
  CategoryComponent({
    super.key,
    required this.categoryName,
    required this.imageSubCategory,
    required this.subCategoryName,
  });
  String categoryName = '';
  String imageSubCategory = '';
  String subCategoryName = '';

  @override
  State<CategoryComponent> createState() => _CategoryComponentState();
}

class _CategoryComponentState extends State<CategoryComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.categoryName,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  letterSpacing: 0.6,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeLayout(
                        index: 1,
                      ),
                    ),
                  );
                },
                child: Container(
                  color: Colors.transparent,
                  child: const Row(
                    children: [
                      Text(
                        'See all',
                        style: TextStyle(
                          fontSize: 12,
                          color: darkGrey,
                          letterSpacing: 0.6,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 15,
                        color: darkGrey,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          SizedBox(
            height: 150,
            child: ListView.separated(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 15,
                );
              },
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200],
                      ),
                      child: Center(
                        child: Image.asset(
                          widget.imageSubCategory,
                          height: 80,
                          width: 80,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: 110,
                      height: 30,
                      child: Text(
                        widget.subCategoryName,
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
