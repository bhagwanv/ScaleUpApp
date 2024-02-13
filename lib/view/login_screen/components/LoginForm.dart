import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
            width: 60,
            child: TextField(
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.done,
              maxLength: 10,
              maxLines: 1,
              cursorColor: kPrimaryColor,
              style: TextStyle(color: Colors.red),
              decoration: InputDecoration(
                hintText: "+91",
                fillColor: textFiledBackgroundColour,
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: kPrimaryColor)),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: TextField(
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.done,
              maxLength: 10,
              maxLines: 1,
              cursorColor: kPrimaryColor,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: kPrimaryColor),
                  ),
                  hintText: "Enter Your Number",
                  fillColor: textFiledBackgroundColour,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: kPrimaryColor, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  )),
            ),
          )
        ]),
        const Column(
          children: [
            MyStatefulWidget(),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10.0), // Set the border radius here
                    ),
                  ),
                  minimumSize: MaterialStateProperty.all<Size>(
                    Size(MediaQuery.of(context).size.width,
                        50), // Width and height of the button
                  ),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(kPrimaryColor),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const OtpScreen();
                      },
                    ),
                  );
                },
                child: const Text(
                  'GET OTP',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool isChecked =
      false; // This holds the state of the checkbox, we call setState and update this whenever a user taps the checkbox
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0, top: 30),
      child: Row(
        children: [
          Checkbox(
            value: isChecked,
            onChanged: (bool? value) {
              // This is where we update the state when the checkbox is tapped
              setState(() {
                isChecked = value!;
              });
            },
          ),
          const Text(
            'Terms & Conditions.',
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 14,
                color: Colors.black),
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}
