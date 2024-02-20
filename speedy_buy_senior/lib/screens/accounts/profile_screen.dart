import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:speedy_buy_senior/constant.dart';
import 'package:speedy_buy_senior/models/user_model.dart';
import 'package:speedy_buy_senior/screens/layout/home_layout.dart';

import '../../providers/user_provider.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  bool loading = true;
  UserModel currentUser = UserModel();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  Future<void> getUserInfo() async {
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    currentUser = await userProvider.getUserInfo();
    firstNameController.text = currentUser.firstName;
    lastNameController.text = currentUser.lastName;
    emailController.text = currentUser.email;
    phoneNumberController.text = currentUser.phoneNumber;
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
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => HomeLayout(index: 3),
              ),
              (route) => false,
            );
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
        ),
        backgroundColor: mainColor,
        title: const Text(
          'My Profile',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            letterSpacing: 1,
          ),
        ),
      ),
      body: loading
          ? const Center(
              child: SpinKitPulse(
                color: mainColor,
              ),
            )
          : Container(
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.all(15),
              height: 400,
              width: double.maxFinite,
              color: Colors.white,
              child: Column(
                children: [
                  TextField(
                    controller: firstNameController,
                    decoration: const InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: greyColor),
                      ),
                      hintText: "First Name",
                      hintStyle: TextStyle(
                        color: greyColor,
                        fontSize: 17,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: lastNameController,
                    decoration: const InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: greyColor),
                      ),
                      hintText: "Last Name",
                      hintStyle: TextStyle(
                        color: greyColor,
                        fontSize: 17,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: greyColor),
                      ),
                      hintText: "Email",
                      hintStyle: TextStyle(
                        color: greyColor,
                        fontSize: 17,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: phoneNumberController,
                    decoration: const InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: greyColor),
                      ),
                      hintText: "Phone Number",
                      hintStyle: TextStyle(
                        color: greyColor,
                        fontSize: 17,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (userProvider.loading == false) {
                      
                      
                        userProvider.editUserInfo(
                          context: context,
                          firstName: firstNameController.text,
                          lastName: lastNameController.text,
                          email: emailController.text,
                          phoneNumber: phoneNumberController.text,
                        );
                       
                      }
                    },
                    child: Container(
                      height: 45,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: blueColor,
                      ),
                      child: Center(
                        child: userProvider.loading
                            ? const SpinKitPulse(
                                color: Colors.white,
                              )
                            : const Text(
                                "Save",
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
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(255, 30, 136, 229),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              'CHANGE PASSWORD',
                              style: TextStyle(
                                color: Color.fromARGB(255, 30, 136, 229),
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(255, 239, 83, 80),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              'DELETE YOUR ACCOUNT',
                              style: TextStyle(
                                color: Color.fromARGB(255, 239, 83, 80),
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
    );
  }
}
