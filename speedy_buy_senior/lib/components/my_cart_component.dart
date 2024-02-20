
import 'package:flutter/material.dart';
import 'package:speedy_buy_senior/constant.dart';

class MyCartComponent extends StatefulWidget {
  const MyCartComponent({
    super.key,
  });

  @override
  State<MyCartComponent> createState() => _MyCartComponentState();
}

class _MyCartComponentState extends State<MyCartComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(10),
      width: double.maxFinite,
      height: 150,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: SizedBox(
              child: Image.asset('assets/images/nike_shoes.png'),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Nike Shoes size 45, with purple color',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.5,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        border: Border.all(color: greyColor),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.remove,
                        color: Colors.grey[700],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      '2',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        border: Border.all(color: greyColor),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.grey[700],
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 254, 219, 223),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.delete,
                      color: Colors.red[400],
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
