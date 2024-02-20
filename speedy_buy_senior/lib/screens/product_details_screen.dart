import 'package:flutter/material.dart';
import 'package:speedy_buy_senior/components/product_cart_component.dart';
import 'package:speedy_buy_senior/constant.dart';
import 'package:speedy_buy_senior/screens/layout/my_cart_screen.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: mainColor,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
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
                color: mainColor,
                size: 30,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 7,
            child: ListView(
              children: [
                SizedBox(
                  width: double.maxFinite,
                  height: 300,
                  child: Image.asset(
                    'assets/images/nike_shoes.png',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 11,
                            child: Text(
                              'Fashion Shoes',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: blueColor,
                                letterSpacing: 0.5,
                              ),
                            ),
                          ),
                          const Expanded(
                            flex: 3,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.favorite_outline,
                                  size: 30,
                                  color: mainColor,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Icon(
                                  Icons.share,
                                  color: mainColor,
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Shoes Nike with purple color',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: mainColor,
                          letterSpacing: 0.5,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        '50.00 USD',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: mainColor,
                          letterSpacing: 0.5,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        '40.00 USD',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: mainColor,
                          letterSpacing: 0.5,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Divider(
                        thickness: 3,
                        color: Colors.grey[300],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'DESCRIPTION',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: blueColor,
                          letterSpacing: 0.5,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'A paragraph is defined as “a group of sentences or a single sentence that forms a unit” (Lunsford and Connors 116). Length and appearance do not determine whether a section in a paper is a paragraph. For instance, in some styles of writing, particularly journalistic styles, a paragraph can be just one sentence long.',
                        style: TextStyle(
                          fontSize: 14,
                          height: 1.2,
                          color: darkGrey,
                          letterSpacing: 0.5,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Divider(
                        thickness: 3,
                        color: Colors.grey[300],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Recommended Products',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: blueColor,
                          letterSpacing: 0.5,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 220,
                        child: ListView.separated(
                          separatorBuilder: (context, index) {
                            return const SizedBox(
                              width: 15,
                            );
                          },
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return ProductCartComponent(
                              image: 'assets/images/macbook.png',
                              name: 'Macbook pro m1 macos',
                              price: '1200.00',
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Container(
                width: double.maxFinite,
                margin: const EdgeInsets.only(
                  bottom: 10,
                  left: 5,
                  right: 5,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: mainColor,
                ),
                child: const Center(
                  child: Text(
                    'ADD TO CART',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.6,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
