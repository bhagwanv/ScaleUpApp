import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:scaleup_app/utils/common_elevted_button.dart';
import 'package:scaleup_app/utils/kyc_faild_widgets.dart';
import '../../utils/constants.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController = TextEditingController();


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
                  OtpTextField(
                    numberOfFields: 4,
                    filled: true,
                    borderColor: const Color(0xFF0196CE),
                    fillColor: const Color(0xffEFFAFF),
                    focusedBorderColor: const Color(0xffEFFAFF),
                    enabledBorderColor: const Color(0xFF0196CE),
                    borderRadius: 	const BorderRadius.all(Radius.circular(10.0)),
                    fieldWidth: 66,
                    //set to true to show as box or false to show as dash
                    showFieldAsBox: true,
                    //runs when a code is typed in
                    onCodeChanged: (String code) {
                      //handle validation or checks here
                    },
                    //runs when every textfield is filled
                    onSubmit: (String verificationCode){
                      showDialog(
                          context: context,
                          builder: (context){
                            return AlertDialog(
                              title: Text("Verification Code"),
                              content: Text('Code entered is $verificationCode'),
                            );
                          }
                      );
                    }, // end onSubmit
                  ),
                  const SizedBox(height: 40,),
                  const SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Resend Code in 55 s',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15, color: kPrimaryColor,fontWeight: FontWeight.normal),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                              text: 'If you didn’t received a code!',
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 14,fontWeight: FontWeight.normal),
                              children: <TextSpan>[
                                TextSpan(text: '  Resend',
                                    style: const TextStyle(
                                        color: Colors.blueAccent, fontSize: 14,fontWeight: FontWeight.normal),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        // navigate to desired screen
                                      }
                                )
                              ]
                          ),
                        ),
                      )
                  ),
                  const SizedBox(height: 10,),
                  CommonElevatedButton(onPressed: (){ bottomSheetMenu(context);}, text: "Verify Code",upperCase: true, )

                ],
              ),
            ),
          ),
        ));
  }
}

void bottomSheetMenu(BuildContext context) {
  showModalBottomSheet(
      context: context,
      builder: (builder){
        return const KycFailedWidgets();
      }
  );
}
