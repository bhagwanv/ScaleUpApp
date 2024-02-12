import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../utils/common_otp_view.dart';

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
            Pinput(
              // Without Validator
              // If true error state will be applied no matter what validator returns
              forceErrorState: true,
              // Text will be displayed under the Pinput
              errorText: 'Error',

              /// ------------
              /// With Validator
              /// Auto validate after user tap on keyboard done button, or completes Pinput
              pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
              validator: (pin) {
                if (pin == '2224') return null;

                /// Text will be displayed under the Pinput
                return 'Pin is incorrect';
              },
            ),
          ],
        ),
      ),
    ));
  }
}
