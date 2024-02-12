import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PermissionsScreen extends StatelessWidget {
  const PermissionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: PermissionsWidget(),
        ),
      ),
    );
  }
}

class PermissionsWidget extends StatefulWidget {
  @override
  _PermissionsWidget createState() => _PermissionsWidget();
}

class _PermissionsWidget extends State<PermissionsWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'to setup your account, we need a few permissions',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 20, color: Color(0xff0196CE)),
            ),
            SizedBox(height: 20),
            Text(
              'We need some permissions to make your experience better',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            SizedBox(height: 20),

            ListTile(
              title: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    child:SvgPicture.asset(
                      'assets/icons/mobile_icon.svg',
                      semanticsLabel: 'mobile_icon',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [ // Adjust the spacing between icon and text
                        Text(
                          'Read Phone State & Phone Number',
                          style: TextStyle(fontSize: 15, color: Color(0xff0196CE)),
                        ),
                        Text(
                          'This will help us in reading your mobile number and securely link your account',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              dense: true,
              enabled: false,
              selected: true,
            ),


            ListTile(
              title: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    child:SvgPicture.asset(
                      'assets/icons/call_icon.svg',
                      semanticsLabel: 'Call_icon',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [ // Adjust the spacing between icon and text
                        Text(
                          'sms (send/read)',
                          style: TextStyle(fontSize: 15, color: Color(0xff0196CE)),
                        ),
                        Text(
                          'Our app collects SMS data to assess your profile for various Scaleup products and/or services, including those offered in partnership with lending partners and other financial services providers. Additionally, send SMS access is required to verify your phone number and other verification purposes. This data may be collected even when the app is closed or not in use.',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              dense: true,
              enabled: false,
              selected: true,
            ),

            ListTile(
              title: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    child:SvgPicture.asset(
                      'assets/icons/camera_icon.svg',
                      semanticsLabel: 'camera_icon',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [ // Adjust the spacing between icon and text
                        Text(
                          'sms (send/read)',
                          style: TextStyle(fontSize: 15, color: Color(0xff0196CE)),
                        ),
                        Text(
                          'Our app collects SMS data to assess your profile for various Scaleup products and/or services, including those offered in partnership with lending partners and other financial services providers. Additionally, send SMS access is required to verify your phone number and other verification purposes. This data may be collected even when the app is closed or not in use.',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              dense: true,
              enabled: false,
              selected: true,
            ),

            ListTile(
              title: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    child:SvgPicture.asset(
                      'assets/icons/file_icon.svg',
                      semanticsLabel: 'file_icon',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [ // Adjust the spacing between icon and text
                        Text(
                          'Storage',
                          style: TextStyle(fontSize: 15, color: Color(0xff0196CE)),
                        ),
                        Text(
                          'This app can access the file stored on your device to help you submit your KYC documents, Bank statement and other required documents to complete the loan application process.',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              dense: true,
              enabled: false,
              selected: true,
            ),

            ListTile(
              title: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    child:SvgPicture.asset(
                      'assets/icons/location_icon.svg',
                      semanticsLabel: 'location_icon',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [ // Adjust the spacing between icon and text
                        Text(
                          'Location',
                          style: TextStyle(fontSize: 15, color: Color(0xff0196CE)),
                        ),
                        Text(
                          'This will help us in showing Cash Deposit Points near you',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              dense: true,
              enabled: false,
              selected: true,
            ),



            Text(
              'By continuing. I agree to Scaleup T&Cs and Privacy Policy',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff0196CE),
              ),
              width: double.infinity,
              height: 50,
              child: TextButton(
                onPressed: () {},
                child: Container(
                  child: const Text(
                    'Accept and Continue',
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
