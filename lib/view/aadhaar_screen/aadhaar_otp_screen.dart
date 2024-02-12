import 'package:flutter/material.dart';

class AadhaarOtpScreen extends StatefulWidget {
  const AadhaarOtpScreen({super.key});

  @override
  State<AadhaarOtpScreen> createState() => _AadhaarOtpScreenState();
}

class _AadhaarOtpScreenState extends State<AadhaarOtpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 30, top: 50),
                    child: Image.asset(
                      'assets/images/scale.png',
                      fit: BoxFit.cover,
                    )),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, top: 50),
              child: Text(
                "Enter\nVerification Code",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 40),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
