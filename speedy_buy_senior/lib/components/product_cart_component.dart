import 'package:flutter/material.dart';
import 'package:speedy_buy_senior/screens/product_details_screen.dart';

// ignore: must_be_immutable
class ProductCartComponent extends StatefulWidget {
  ProductCartComponent({
    super.key,
    required this.image,
    required this.name,
    required this.price,
  });
  String image = '';
  String name = '';
  String price = '';
  @override
  State<ProductCartComponent> createState() => _ProductCartComponentState();
}

class _ProductCartComponentState extends State<ProductCartComponent> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ProductDetailsScreen(),
            ));
      },
      child: Stack(
        children: [
          Container(
            width: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                    flex: 5,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Center(
                        child: Image.asset(
                          widget.image,
                        ),
                      ),
                    )),
                Expanded(
                    flex: 3,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text(
                            widget.name,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Text(
                                widget.price,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                'USD',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: Container(
              height: 30,
              width: 30,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              child: const Center(
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 25,
                ),
              ),
            ),
          ),
          Positioned(
            child: Container(
              padding: const EdgeInsets.all(5),
              height: 23,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: Colors.amber[100],
              ),
              child: Center(
                child: Text(
                  'Featured',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber[800],
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
