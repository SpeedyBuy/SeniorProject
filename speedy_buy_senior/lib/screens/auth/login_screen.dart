import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:speedy_buy_senior/constant.dart';
import 'package:speedy_buy_senior/providers/user_provider.dart';
import 'package:speedy_buy_senior/screens/auth/forgot_password_screen.dart';
import 'package:speedy_buy_senior/screens/auth/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool eyes = true;
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context, listen: true);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(20),
              width: double.maxFinite,
              decoration: BoxDecoration(
                border: Border.all(color: greyColor, width: 0.5),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                children: [
                  const Text(
                    "Login",
                    style: TextStyle(
                      color: mainColor,
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
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
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (userProvider.loading == false) {
                        userProvider.signInUser(
                          context: context,
                          email: emailController.text,
                          password: passwordController.text,
                        );
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
                                "Login",
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
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ForgotPasswordScreen(),
                          ));
                    },
                    child: const SizedBox(
                      height: 40,
                      width: 170,
                      child: Center(
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 17,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(20),
              width: double.maxFinite,
              decoration: BoxDecoration(
                border: Border.all(color: greyColor, width: 0.5),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "One account for order tracking, easy returns and more",
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpScreen(),
                        ),
                      );
                    },
                    child: Container(
                      height: 50,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: blueColor,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          "Create Account",
                          style: TextStyle(
                            color: blueColor,
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
          ],
        ),
      ),
    );
  }
}
