import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:speedy_buy_senior/constant.dart';
import 'package:speedy_buy_senior/models/user_model.dart';
import 'package:speedy_buy_senior/providers/user_provider.dart';
import 'package:speedy_buy_senior/screens/accounts/about_us_screen.dart';
import 'package:speedy_buy_senior/screens/accounts/address/address_screen.dart';
import 'package:speedy_buy_senior/screens/accounts/contact_us_screen.dart';
import 'package:speedy_buy_senior/screens/accounts/coupon_screen.dart';
import 'package:speedy_buy_senior/screens/accounts/feedback_screen.dart';
import 'package:speedy_buy_senior/screens/accounts/orders/order_screen.dart';
import 'package:speedy_buy_senior/screens/accounts/profile_screen.dart';
import 'package:speedy_buy_senior/screens/accounts/suggestion/add_new_suggestion.dart';

class MyAccountScreen extends StatefulWidget {
  const MyAccountScreen({super.key});

  @override
  State<MyAccountScreen> createState() => _MyAccountScreenState();
}

class _MyAccountScreenState extends State<MyAccountScreen> {
  bool loading = true;
  UserModel currentUser = UserModel();

  Future<void> getUserInfo() async {
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    currentUser = await userProvider.getUserInfo();

    setState(() {
      loading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    getUserInfo();
  }

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context, listen: true);
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: loading
          ? const Center(
              child: SpinKitPulse(
                color: mainColor,
              ),
            )
          : Padding(
              padding: const EdgeInsets.only(
                top: 5.0,
                left: 15,
                right: 15,
                bottom: 5,
              ),
              child: ListView(
                children: [
                  SizedBox(
                    height: 160,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: greyColor, width: 0.2),
                            color: Colors.white,
                          ),
                          height: 120,
                          width: double.maxFinite,
                          child: Center(
                              child: Text(
                            '${currentUser.firstName} ${currentUser.lastName}',
                            style: const TextStyle(
                              fontSize: 16,
                              letterSpacing: 0.5,
                              fontWeight: FontWeight.w600,
                            ),
                          )),
                        ),
                        Positioned(
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 78),
                            height: 80,
                            width: 110,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey[500],
                            ),
                            child: Center(
                              child: Text(
                                '${userProvider.firstCharName.toUpperCase()}${userProvider.lastCharName.toUpperCase()}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 182,
                    padding: const EdgeInsets.all(20),
                    width: double.maxFinite,
                    color: Colors.white,
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MyProfileScreen(),
                                ));
                          },
                          child: Container(
                            color: Colors.white,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/profile_icon.png',
                                      height: 30,
                                      width: 30,
                                    ),
                                    const SizedBox(
                                      width: 25,
                                    ),
                                    const Text(
                                      'My Profile',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        letterSpacing: 0.5,
                                      ),
                                    ),
                                  ],
                                ),
                                const Icon(
                                  Icons.arrow_forward,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Divider(
                          color: greyColor,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const AddressScreen(),
                                ));
                          },
                          child: Container(
                            color: Colors.white,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/address_icon.png',
                                      height: 30,
                                      width: 30,
                                    ),
                                    const SizedBox(
                                      width: 25,
                                    ),
                                    const Text(
                                      'Myasdasdasd Address',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        letterSpacing: 0.5,
                                      ),
                                    ),
                                  ],
                                ),
                                const Icon(
                                  Icons.arrow_forward,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Divider(
                          color: greyColor,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const OrderScreen(),
                                ));
                          },
                          child: Container(
                            color: Colors.white,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/order_icon.png',
                                      height: 30,
                                      width: 30,
                                    ),
                                    const SizedBox(
                                      width: 25,
                                    ),
                                    const Text(
                                      'My Orders',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        letterSpacing: 0.5,
                                      ),
                                    ),
                                  ],
                                ),
                                const Icon(
                                  Icons.arrow_forward,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 182,
                    padding: const EdgeInsets.all(20),
                    width: double.maxFinite,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/chat_icon.png',
                                  height: 30,
                                  width: 30,
                                ),
                                const SizedBox(
                                  width: 25,
                                ),
                                const Text(
                                  'Live Chat',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    letterSpacing: 0.5,
                                  ),
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.arrow_forward,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Divider(
                          color: greyColor,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ContactUsScreen(),
                                ));
                          },
                          child: Container(
                            color: Colors.white,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/contact_us_icon.png',
                                      height: 30,
                                      width: 30,
                                    ),
                                    const SizedBox(
                                      width: 25,
                                    ),
                                    const Text(
                                      'Contact Us',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        letterSpacing: 0.5,
                                      ),
                                    ),
                                  ],
                                ),
                                const Icon(
                                  Icons.arrow_forward,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Divider(
                          color: greyColor,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const FeedbackScreen(),
                                ));
                          },
                          child: Container(
                            color: Colors.white,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/feedback_icon.png',
                                      height: 30,
                                      width: 30,
                                    ),
                                    const SizedBox(
                                      width: 25,
                                    ),
                                    const Text(
                                      'Feeedback',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        letterSpacing: 0.5,
                                      ),
                                    ),
                                  ],
                                ),
                                const Icon(
                                  Icons.arrow_forward,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 182,
                    padding: const EdgeInsets.all(20),
                    width: double.maxFinite,
                    color: Colors.white,
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const CouponScreen(),
                                ));
                          },
                          child: Container(
                            color: Colors.transparent,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/coupon_icon.png',
                                      height: 30,
                                      width: 30,
                                    ),
                                    const SizedBox(
                                      width: 25,
                                    ),
                                    const Text(
                                      'Coupon',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        letterSpacing: 0.5,
                                      ),
                                    ),
                                  ],
                                ),
                                const Icon(
                                  Icons.arrow_forward,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Divider(
                          color: greyColor,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const AddNewSuggestion(),
                                ));
                          },
                          child: Container(
                            color: Colors.transparent,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/suggestion_icon.png',
                                      height: 30,
                                      width: 30,
                                    ),
                                    const SizedBox(
                                      width: 25,
                                    ),
                                    const Text(
                                      'Suggestion',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        letterSpacing: 0.5,
                                      ),
                                    ),
                                  ],
                                ),
                                const Icon(
                                  Icons.arrow_forward,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Divider(
                          color: greyColor,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/points_icon.png',
                                  height: 30,
                                  width: 30,
                                ),
                                const SizedBox(
                                  width: 25,
                                ),
                                const Text(
                                  'Points',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    letterSpacing: 0.5,
                                  ),
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.arrow_forward,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 130,
                    padding: const EdgeInsets.all(20),
                    width: double.maxFinite,
                    color: Colors.white,
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const AboutUsScreen(),
                                ));
                          },
                          child: Container(
                            color: Colors.transparent,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/aboutus_icon.png',
                                      height: 30,
                                      width: 30,
                                    ),
                                    const SizedBox(
                                      width: 25,
                                    ),
                                    const Text(
                                      'About Us',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        letterSpacing: 0.5,
                                      ),
                                    ),
                                  ],
                                ),
                                const Icon(
                                  Icons.arrow_forward,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Divider(
                          color: greyColor,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            userProvider.signOutUser(context: context);
                          },
                          child: Container(
                            color: Colors.transparent,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/logout_icon.png',
                                      height: 30,
                                      width: 30,
                                    ),
                                    const SizedBox(
                                      width: 25,
                                    ),
                                    const Text(
                                      'Logout',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        letterSpacing: 0.5,
                                      ),
                                    ),
                                  ],
                                ),
                                const Icon(
                                  Icons.arrow_forward,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
