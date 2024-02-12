import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30,top: 50,right: 30,bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(height: 69,width: 51,
                  alignment:Alignment.topLeft,
                  child:  Image.asset('assets/images/scale.png')
              ),
              const SizedBox(height: 50,),

              const Text(
                'Enter \nVerification Code',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 40, color: Colors.black),
              ),
              const SizedBox(height: 30,),
              const Text(
                'We just sent to +91 XXXX XXX224',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
              const SizedBox(height: 45,),

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
                  return 'Pin is incorrect';
                },
              ),

            ],
          ),
        ),
      ),
    ));
  }
}
