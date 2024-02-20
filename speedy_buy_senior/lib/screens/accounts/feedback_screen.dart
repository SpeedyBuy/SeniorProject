import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:speedy_buy_senior/providers/user_provider.dart';

import '../../constant.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({super.key});

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  TextEditingController generalController = TextEditingController();
  TextEditingController deliveryController = TextEditingController();
  TextEditingController productController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context, listen: true);

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: mainColor,
        title: const Text(
          'Feedback',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ListView(
              children: [
                Container(
                  margin: const EdgeInsets.all(15),
                  height: 190,
                  width: double.maxFinite,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 40,
                        width: double.maxFinite,
                        color: mainColor,
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 10.0,
                            left: 10,
                          ),
                          child: Text(
                            'General Feedback',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text(
                          'Comment:',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(color: greyColor, width: 0.7),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: TextFormField(
                          controller: generalController,
                          maxLines: 3,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(15),
                  height: 190,
                  width: double.maxFinite,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 40,
                        width: double.maxFinite,
                        color: mainColor,
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 10.0,
                            left: 10,
                          ),
                          child: Text(
                            'Delivery Service',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Row(
                          children: [
                            const Text(
                              'Rate:',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            RatingBarIndicator(
                              rating: 7,
                              itemCount: 5,
                              itemSize: 25.0,
                              physics: const BouncingScrollPhysics(),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text(
                          'Comment:',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(color: greyColor, width: 0.7),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: TextFormField(
                          controller: deliveryController,
                          maxLines: 2,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(15),
                  height: 190,
                  width: double.maxFinite,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 40,
                        width: double.maxFinite,
                        color: mainColor,
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 10.0,
                            left: 10,
                          ),
                          child: Text(
                            'Product Quality',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Row(
                          children: [
                            const Text(
                              'Rate:',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            RatingBarIndicator(
                              rating: 7,
                              itemCount: 5,
                              itemSize: 25.0,
                              physics: const BouncingScrollPhysics(),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text(
                          'Comment:',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(color: greyColor, width: 0.7),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: TextFormField(
                          controller: productController,
                          maxLines: 2,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              userProvider.addFeedbackUser(
                context: context,
                generalFeedbackComment: generalController.text,
                productQualityComment: productController.text,
                deliveryServiceComment: deliveryController.text,
              );
            },
            child: Container(
              height: 50,
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: blueColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: userProvider.loading
                    ? const SpinKitPulse(
                        color: Colors.white,
                      )
                    : const Text(
                        "Submit Changes",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
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
