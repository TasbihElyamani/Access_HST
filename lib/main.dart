// import 'package:access_hst/homescreen.dart';
import 'package:access_hst/login.dart';
//import 'package:access_hst/login.dart';
//import 'package:curvedbottomnavbar/homescreen.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
     // debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

    // title: 'Flutter Demo',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      // home: const KeyboardVisibilityProvider (
      // child :  HomeScreen(),
      // ),