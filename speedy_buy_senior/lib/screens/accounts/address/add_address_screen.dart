import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:speedy_buy_senior/constant.dart';
import 'package:speedy_buy_senior/models/user_model.dart';
import 'package:speedy_buy_senior/providers/user_provider.dart';

class AddAddressScreen extends StatefulWidget {
  const AddAddressScreen({super.key});
  

  @override
  State<AddAddressScreen> createState() => _AddAddressScreenState();
}

class _AddAddressScreenState extends State<AddAddressScreen> {
  bool loading = true;
  UserModel currentUser = UserModel();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController zoneController = TextEditingController();
  TextEditingController addressDetailsController = TextEditingController();

  Future<void> getUserInfo() async {
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    currentUser = await userProvider.getUserInfo();
    firstNameController.text = currentUser.firstName;
    lastNameController.text = currentUser.lastName;
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
        backgroundColor: mainColor,
        title: const Text(
          'Add Address',
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
              margin: const EdgeInsets.only(top: 15),
              padding: const EdgeInsets.all(15),
              height: 440,
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
                    height: 10,
                  ),
                  TextField(
                    controller: zoneController,
                    onTap: () {},
                    decoration: const InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: greyColor),
                      ),
                      hintText: "Zone",
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
                    controller: addressDetailsController,
                    decoration: const InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: greyColor),
                      ),
                      hintText: "Address Details",
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
                    readOnly: true,
                    onTap: () {},
                    decoration: const InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: greyColor),
                      ),
                      hintText: "Map Location",
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
                        userProvider.addAddressUser(
                          context: context,
                          firstName: firstNameController.text,
                          lastName: lastNameController.text,
                          phoneNumber: phoneNumberController.text,
                          addressdetails: addressDetailsController.text,
                          zone: zoneController.text,
                        );
                      }
                    },
                    child: Container(
                      height: 40,
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
                ],
              ),
            ),
    );
  }
}
