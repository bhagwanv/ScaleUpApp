import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
                  child: SvgPicture.asset("assets/icons/scale_up_logo.svg"),
                ),
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
