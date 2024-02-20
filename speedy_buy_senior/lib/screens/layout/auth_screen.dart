// 
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:speedy_buy_senior/screens/accounts/my_account_screen.dart';
import 'package:speedy_buy_senior/screens/auth/login_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({
    super.key,
  });

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  
  @override
  Widget build(BuildContext context) {
  return StreamBuilder<User?>(
    stream: FirebaseAuth.instance.authStateChanges(),
    builder: (BuildContext context, AsyncSnapshot<User?> snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        // If connection state is waiting, return a loading indicator or some other widget
        return const CircularProgressIndicator();
      } else {
        if (snapshot.data == null) {
          // If user is not logged in, return the LoginScreen widget
          return const LoginScreen();
        } else {
          // If user is logged in, return the MyAccountScreen widget
          return const MyAccountScreen();
        }
      }
    },
  );
}
}
