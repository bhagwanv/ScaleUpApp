import 'package:flutter/material.dart';
import 'package:scaleup_app/view/aadhaar_screen/aadhaar_screen.dart';
import 'package:scaleup_app/view/login_screen/login_screen.dart';
import 'package:scaleup_app/view/personal_info/PersonalInformation.dart';
import 'package:scaleup_app/view/take_selfi/take_selfi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
     // home: const LoginScreen(),
      home: const TakeSelfie(),
    );
  }
}

