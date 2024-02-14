import 'package:flutter/material.dart';
import 'package:scaleup_app/view/Bank_details_screen/BankDetailsScreen.dart';
import 'package:scaleup_app/view/aadhaar_screen/aadhaar_screen.dart';
import 'package:scaleup_app/view/agreement_screen/Agreementscreen.dart';
import 'package:scaleup_app/view/profile_screen/ProfileReview.dart';
import 'package:scaleup_app/view/business_details/business_details.dart';
import 'package:scaleup_app/view/login_screen/login_screen.dart';
import 'package:scaleup_app/view/personal_info/PersonalInformation.dart';
import 'package:scaleup_app/view/profile_screen/components/CreditLineApproved.dart';

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
      //home: const LoginScreen(),

      home: const AgreementScreen(),

    );
  }
}

