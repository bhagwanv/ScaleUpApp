import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scaleup_app/utils/common_elevted_button.dart';
import 'package:scaleup_app/view/otp_screens/OtpScreen.dart';
import 'package:scaleup_app/view/pancard_screen/PermissionsScreen.dart';

import '../../constants.dart';

class PancardScreen extends StatelessWidget {
  const PancardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: PancardWidget(),
        ),
      ),
    );
  }
}

class PancardWidget extends StatefulWidget {
  @override
  _PancardWidget createState() => _PancardWidget();
}

class _PancardWidget extends State<PancardWidget> {
  TextEditingController _controller = TextEditingController();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 100,
                width: 100,
                alignment: Alignment.topLeft,
                child: Image.asset('assets/images/scale.png')),
            Text(
              'Enter Your PAN',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 40, color: Colors.black),
            ),
            SizedBox(height: 20),
            Text(
              'Verify the PAN number',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
            SizedBox(height: 20),
            Text(
              'PAN Number',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 15, color: Color(0xff858585)),
            ),
            SizedBox(height: 5),
            TextField(
              keyboardType: TextInputType.text,
              cursorColor: kPrimaryColor,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: kPrimaryColor),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                hintText: "PAN number",
                fillColor: textFiledBackgroundColour,
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: kPrimaryColor, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                suffixIcon: Container(
                  padding: EdgeInsets.all(16),
                  child: SvgPicture.asset(
                    'assets/images/verify_pan.svg',
                    semanticsLabel: 'My SVG Image',
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Name ( As per PAN )',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 15, color: Color(0xff858585)),
            ),
            SizedBox(height: 5),
            TextField(
              keyboardType: TextInputType.text,
              cursorColor: kPrimaryColor,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: kPrimaryColor),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                hintText: "Enter Name",
                fillColor: textFiledBackgroundColour,
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: kPrimaryColor, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'DOB ( As per PAN )',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 15, color: Color(0xff858585)),
            ),
            SizedBox(height: 5),
            TextField(
              keyboardType: TextInputType.text,
              cursorColor: kPrimaryColor,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: kPrimaryColor),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                hintText: "DD | MM | YYYY",
                fillColor: textFiledBackgroundColour,
                filled: true,
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: kPrimaryColor, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Father’s Name ( As per PAN )',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 15, color: Color(0xff858585)),
            ),
            SizedBox(height: 5),
            TextField(
              keyboardType: TextInputType.text,
              cursorColor: kPrimaryColor,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: kPrimaryColor),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                hintText: "Enter Father Name",
                fillColor: textFiledBackgroundColour,
                filled: true,
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: kPrimaryColor, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0xff0196CE))),
              width: double.infinity,
              height: 148,
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffEFFAFF),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/images/gallery.svg'),
                      Text(
                        'Upload Aadhar Front Image',
                        style: TextStyle(color: Color(0xff0196CE)),
                      ),
                      Text('Supports : JPEG, PNG',
                          style: TextStyle(color: Color(0xffCACACA))),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [CustomCheckbox()],
            ),
            SizedBox(height: 20),
            Text(
                "I hereby accept Scaleup T&C & Privacy Notice. Further, I hereby agree to share my details, including PAN, Date of birth, Name, Pin code, Mobile number, Email id and device information with you and for further sharing with your partners including lending partners"),
            SizedBox(height: 30),
            CommonElevatedButton(onPressed: (){  Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const PermissionsScreen();
                },
              ),
            );;}, text: "next",upperCase: true, )
          ],
        ),
      ),
    );
  }
}

class CustomCheckbox extends StatefulWidget {
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
        padding: EdgeInsets.all(8.0),
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
            Text('Custom Checkbox Text'),
          ],
        ),
      ),
    );
  }
}
