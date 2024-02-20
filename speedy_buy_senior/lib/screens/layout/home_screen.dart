import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:speedy_buy_senior/components/category_component.dart';
import 'package:speedy_buy_senior/components/product_cart_component.dart';
import 'package:speedy_buy_senior/constant.dart';
import 'package:speedy_buy_senior/providers/app_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool loading = true;
  Future<void> getAppInfo() async {
    final appProvider = Provider.of<AppProvider>(context, listen: false);
    await appProvider.getAppInfo();
    setState(() {
      loading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    getAppInfo();
  }

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context, listen: true);
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: loading
          ? const Center(
              child: SpinKitPulse(
                color: mainColor,
              ),
            )
          : ListView(
              physics: const ClampingScrollPhysics(),
              children: [
                Container(
                  height: 80,
                  width: double.maxFinite,
                  color: mainColor,
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.all(15),
                      padding: const EdgeInsets.all(10),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.search_rounded,
                            size: 30,
                            color: greyColor,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Search in all categories',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: greyColor,
                              letterSpacing: 0.6,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  color: mainColor,
                  child: Container(
                    height: 100,
                    width: double.maxFinite,
                    padding: const EdgeInsets.all(15),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.attach_money_sharp,
                          size: 30,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'You can pay your order in Lebanese Pound',
                              style: TextStyle(
                                fontSize: 12,
                                color: greyColor,
                                letterSpacing: 0.6,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              '${appProvider.appModel.dollarPrice} USD = ${appProvider.appModel.lebanonPrice} LBP',
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                letterSpacing: 0.6,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              'last updated on ${appProvider.appModel.date}',
                              style: const TextStyle(
                                fontSize: 12,
                                color: greyColor,
                                letterSpacing: 0.6,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Featured Products',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          letterSpacing: 0.6,
                        ),
                      ),
                      Row(
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
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 7,
                  ),
                  child: SizedBox(
                    height: 220,
                    child: ListView.separated(
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          width: 15,
                        );
                      },
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return ProductCartComponent(
                          image: 'assets/images/macbook.png',
                          name: 'Macbook pro m1 macos',
                          price: '1200.00',
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recently Added',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          letterSpacing: 0.6,
                        ),
                      ),
                      Row(
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
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 7,
                  ),
                  child: SizedBox(
                    height: 220,
                    child: ListView.separated(
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          width: 15,
                        );
                      },
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return ProductCartComponent(
                          image: 'assets/images/nike_shoes.png',
                          name: 'Shoes Nike with purple color',
                          price: '40.00',
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CategoryComponent(
                  categoryName: 'Shop by Category',
                  imageSubCategory: 'assets/images/home_kitchen.png',
                  subCategoryName: 'Cookers',
                ),
              ],
            ),
    );
  }
}
