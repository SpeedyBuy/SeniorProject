import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:speedy_buy_senior/constant.dart';
import 'package:speedy_buy_senior/providers/user_provider.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool checkox = false;
  bool eyes = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    checkox = false;
  }

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: mainColor,
        title: const Text(
          'CREATE ACCOUNT',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            letterSpacing: 1,
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(15),
        height: 500,
        width: double.maxFinite,
        decoration: BoxDecoration(
          border: Border.all(
            color: greyColor,
            width: 0.5,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
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
              height: 20,
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
              height: 20,
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
              height: 20,
            ),
            TextField(
              controller: passwordController,
              obscureText: eyes,
              decoration: InputDecoration(
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      eyes = !eyes;
                    });
                  },
                  child: eyes
                      ? const Icon(Icons.remove_red_eye)
                      : const Icon(Icons.password),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: greyColor),
                ),
                hintText: "Password",
                hintStyle: const TextStyle(
                  color: greyColor,
                  fontSize: 17,
                  letterSpacing: 1,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: confirmPasswordController,
              obscureText: eyes,
              decoration: InputDecoration(
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      eyes = !eyes;
                    });
                  },
                  child: eyes
                      ? const Icon(Icons.remove_red_eye)
                      : const Icon(Icons.password),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: greyColor),
                ),
                hintText: "Confirm Password",
                hintStyle: const TextStyle(
                  color: greyColor,
                  fontSize: 17,
                  letterSpacing: 1,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  activeColor: mainColor,
                  value: checkox,
                  onChanged: (value) {
                    setState(() {
                      checkox = value!;
                    });
                  },
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text("I agree to the "),
                const Text(
                  "Terms & Conditions",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                if (userProvider.loading == false) {
                  if (checkox) {
                    userProvider.signUpUser(
                      context: context,
                      password: passwordController.text,
                      confirmPassowrd: confirmPasswordController.text,
                      email: emailController.text,
                      firstName: firstNameController.text,
                      lastName: lastNameController.text,
                      phoneNumber: '',
                    );
                    setState(() {
                      checkox = false;
                    });
                  } else {
                    final snackBar = SnackBar(
                      backgroundColor: Colors.red,
                      content: const Text(
                        'Please enter the Terms & Conditions',
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
                height: 50,
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
                          "Create Account",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
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
