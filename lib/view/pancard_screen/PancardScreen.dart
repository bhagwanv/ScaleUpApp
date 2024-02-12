import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PancardScreen extends StatelessWidget {
  const PancardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pancard Screen'),
        ),
        body: PancardWidget(),
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
        padding:
            const EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(height: 100,width: 100,
              alignment:Alignment.topLeft,
              child:  Image.asset('assets/images/scale.png')
            ),

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
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                fillColor: Color(0xffEFFAFF),
                filled: true,
                labelText: 'PAN Number',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Color(0xff0196CE)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.greenAccent),
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
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                fillColor: Color(0xffEFFAFF),
                filled: true,
                labelText: 'Name ( As per PAN )',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Color(0xff0196CE)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.greenAccent),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                fillColor: Color(0xffEFFAFF),
                filled: true,
                labelText: 'DOB ( As per PAN )',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Color(0xff0196CE)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.greenAccent),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                fillColor: Color(0xffEFFAFF),
                filled: true,
                labelText: 'Father’s Name ( As per PAN )',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Color(0xff0196CE)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.greenAccent),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: Color(0xff0196CE))),
              width: double.infinity,
              height: 148,
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
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
                          style: TextStyle(color: Color(0xffCACACA))
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                Text('I agree to the terms and conditions'),
              ],
            ),
            SizedBox(height: 20),
            Text(
                "I hereby accept Scaleup T&C & Privacy Notice. Further, I hereby agree to share my details, including PAN, Date of birth, Name, Pin code, Mobile number, Email id and device information with you and for further sharing with your partners including lending partners"),
            SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Color(0xff0196CE),
              ),
              width: double.infinity,
              height: 50,
              child: TextButton(
                onPressed: () {},
                child: Container(
                  child: const Text(
                    'NEXT',
                    style: TextStyle(color: Colors.white, fontSize: 13.0),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

