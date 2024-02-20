import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:speedy_buy_senior/constant.dart';
import 'package:speedy_buy_senior/providers/user_provider.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  TextEditingController descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context, listen: true);

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: mainColor,
        title: const Text(
          'Contact Us',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            letterSpacing: 1,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.all(10),
            height: 70,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: greyColor, width: 0.3),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/whatsapp_logo.png'),
                    const SizedBox(
                      width: 10,
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Contact Us via WhatsApp',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.6,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '+96103001767',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.6,
                            color: greyColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: greyColor,
                  size: 20,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.all(10),
            height: 70,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: greyColor, width: 0.3),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/device_icon.png'),
                    const SizedBox(
                      width: 10,
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Customer service',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.6,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '+96103001767',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.6,
                            color: greyColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: greyColor,
                  size: 20,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.all(10),
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: greyColor, width: 0.3),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/message_icon.png',
                      height: 50,
                      width: 50,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Send us a message',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.6,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 45,
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: greyColor,
                      width: 0.5,
                    ),
                  ),
                  child: const TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Speedy Buy",
                      hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 45,
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: greyColor,
                      width: 0.5,
                    ),
                  ),
                  child: TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(
                          top: 8.0,
                          bottom: 8,
                          right: 8,
                        ),
                        child: Image.asset('assets/images/lebanon_icon.png'),
                      ),
                      border: InputBorder.none,
                      hintText: "+96103001767",
                      hintStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                // Container(
                //   height: 45,
                //   padding: const EdgeInsets.only(left: 10, right: 10),
                //   width: double.maxFinite,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(5),
                //     border: Border.all(
                //       color: greyColor,
                //       width: 0.5,
                //     ),
                //   ),
                //   child: TextField(
                //     onTap: () {},
                //     decoration: const InputDecoration(
                //       suffixIcon: Icon(Icons.keyboard_arrow_down_rounded),
                //       border: InputBorder.none,
                //       hintText: "Select a Subject",
                //       hintStyle: TextStyle(
                //         color: greyColor,
                //         fontSize: 17,
                //         letterSpacing: 1,
                //       ),
                //     ),
                //   ),
                // ),
                // const SizedBox(
                //   height: 10,
                // ),
                Container(
                  height: 90,
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: greyColor,
                      width: 0.5,
                    ),
                  ),
                  child: TextField(
                    controller: descriptionController,
                    maxLines: 4,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText:
                          "Describe your problem in details and we will get back to you as soon as possible.",
                      hintStyle: TextStyle(
                        color: greyColor,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    if (userProvider.loading == false) {
                      if (descriptionController.text.isNotEmpty) {
                        userProvider.addContactUsMesssage(
                          context: context,
                          description: descriptionController.text,
                        );
                      } else {
                        final snackBar = SnackBar(
                          backgroundColor: Colors.red,
                          content: const Text(
                            'Please add description',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          action: SnackBarAction(
                            label: '',
                            onPressed: () {},
                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    }
                  },
                  child: Container(
                    height: 45,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: blueColor,
                    ),
                    child: const Center(
                      child: Text(
                        "SEND MESSAGE",
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
          ),
        ],
      ),
    );
  }
}
