import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scaleup_app/utils/common_elevted_button.dart';
import 'package:scaleup_app/view/otp_screens/OtpScreen.dart';

import '../../../utils/constants.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(children: [
          SizedBox(
            width: 58,
            child: TextField(
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.done,
              maxLength: 10,
              maxLines: 1,
              cursorColor: Colors.black,
              style: TextStyle(color: Colors.red),

              decoration: InputDecoration(
                hintText: "+91",
                fillColor: textFiledBackgroundColour,
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kPrimaryColor),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    borderSide: BorderSide(color: kPrimaryColor)),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: SizedBox(
              child: TextField(
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
                maxLength: 10,
                maxLines: 1,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: kPrimaryColor),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    hintText: "Enter Your Number",
                    fillColor: textFiledBackgroundColour,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: kPrimaryColor, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    )),
              ),
            ),
          )
        ]),
        const SizedBox(height: 50,
        ),
        const Column(
          children: [
            CustomCheckbox(),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              CommonElevatedButton(onPressed: (){ Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const OtpScreen();
                  },
                ),
              );}, text: "GET OTP",upperCase: true, ),
            ],
          ),
        ),
      ],
    );
  }
}

class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox({super.key});

  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
      },
      child: Container(
        child: Row(
          children: [
            Container(
              width: 24.0,
              height: 24.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 0.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: isChecked
                  ? Container(
                color: Color(0xff0196CE),
                child: Icon(
                  Icons.check,
                  size: 18.0,
                  color: Colors.white,
                ),
              )
                  : Container(),
            ),
            SizedBox(width: 8.0),
            Text('Terms & Conditions.'),
          ],
        ),
      ),
    );
  }
}
