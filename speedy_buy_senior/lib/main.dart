import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:speedy_buy_senior/providers/app_provider.dart';
import 'package:speedy_buy_senior/providers/user_provider.dart';
import 'package:speedy_buy_senior/screens/splash_screen.dart';
//omar is here
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: 'AIzaSyDaPlYHjX6sqCfD8nrxrrlZl3_iMjoQQEk',
            appId: '1:969112396738:ios:c2cba658f2ad0551e32c5b',
            messagingSenderId: '969112396738',
            projectId: 'speedybuy-7d48c',
            iosBundleId: 'com.example.speedyBuySenior',
            storageBucket: 'speedybuy-7d48c.appspot.com'));
  } catch (e) {
    if (kDebugMode) {
      print(e);
    }
  }

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserProvider()),
        ChangeNotifierProvider(create: (context) => AppProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SpalshScreen(),
    );
  }
}
