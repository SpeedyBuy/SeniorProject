import 'dart:async';

import 'package:flutter/material.dart';

import 'layout/home_layout.dart';

class SpalshScreen extends StatefulWidget {
  const SpalshScreen({super.key});

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {


  
  @override
  void initState() {
    super.initState();
    // After 5 seconds, navigate to the next screen
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => HomeLayout(
                  index: 0,
                )),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(50),
        //mno5od fyon 7ajem screen kolaw
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: const BoxDecoration(
          //mnshen 8ayer darajet l color
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            colors: [
              Color.fromRGBO(166, 166, 166, 1),
              Color.fromARGB(255, 235, 235, 235),
            ],
          ),
        ),
        child: Image.asset(
          'assets/images/logo_speedy_buy.png',
        ),
      ),
    );
  }
}
