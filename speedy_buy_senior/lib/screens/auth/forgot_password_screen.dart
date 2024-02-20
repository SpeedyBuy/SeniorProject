import 'package:flutter/material.dart';
import 'package:speedy_buy_senior/constant.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: mainColor,
        title: const Text('FORGOT PASSWORD',style: TextStyle(
          color: Colors.white,
        ),),
      ),
      body: Container(
        margin: const EdgeInsets.all(15),
        padding: const EdgeInsets.all(15),
        height: 200,
        width: double.maxFinite,
        decoration: BoxDecoration(
          border: Border.all(
            color: greyColor,
            width: 0.5,
          ),
        ),
        child: Column(
          children: [
            const Text(
              'Enter your registered email address, you will receive an email containing your new password.\nAlways Check your Spam/Junk folder.',
              style: TextStyle(
                fontSize: 14,
                height: 1.2,
                color: Colors.black,
              ),
            ),
            const TextField(
              decoration: InputDecoration(
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
            Container(
              height: 45,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: blueColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Center(
                child: Text(
                  "Send",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
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
