import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scaleup_app/view/aadhaar_screen/aadhaar_otp_screen.dart';
import 'package:scaleup_app/view/aadhaar_screen/aadhaar_photo_selection.dart';

import '../../utils/aadhaar_number_formatter.dart';
import '../../utils/common_elevted_button.dart';
import '../../utils/constants.dart';
import 'components/CheckboxTerm.dart';

class AadhaarScreen extends StatefulWidget {
  const AadhaarScreen({super.key});

  @override
  State<AadhaarScreen> createState() => _AadhaarScreenState();
}

class _AadhaarScreenState extends State<AadhaarScreen> {
  final TextEditingController _aadhaarController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 0.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Image.asset(
                      'assets/images/scale.png',
                      fit: BoxFit.cover,
                    )),
                const Padding(
                  padding: EdgeInsets.only(left: 0, top: 50),
                  child: Text(
                    "Verify Aadhaar",
                    style:
                        TextStyle(fontFamily: 'Urbanist',
                          fontSize: 40.0,
                          color: blackSmall,
                          fontWeight: FontWeight.w400,),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 44),
                  child: Text(
                    "Please validate your Aadhaar number",
                    style: TextStyle(fontFamily: 'Urbanist',
                      fontSize: 15.0,
                      color: blackSmall,
                      fontWeight: FontWeight.w500,),
                    textAlign: TextAlign.start,
                  ),
                ),
                TextFormField(
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    AadhaarNumberFormatter(),
                  ],
                  controller: _aadhaarController,
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontFamily: 'Urbanist',
                    fontSize: 16.0,
                    color: blackSmall,
                    fontWeight: FontWeight.w500,),
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: kPrimaryColor),
                    ),
                    fillColor: textFiledBackgroundColour,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: kPrimaryColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: kPrimaryColor),
                    ),
                    hintText: 'XXXX XXXX XXXX',
                    labelText: 'Aadhaar Card Number',
                  ),
                  onChanged: (value) {},
                ),
                const SizedBox(height: 26),
                Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [kPrimaryColor, kPrimaryColor],
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  height: 148,
                  child: Padding(
                    padding: const EdgeInsets.all(1),
                    child: InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                          color: textFiledBackgroundColour,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                                child: SvgPicture.asset(
                                    "assets/icons/gallery.svg",
                                    colorFilter: const ColorFilter.mode(
                                        kPrimaryColor, BlendMode.srcIn))),
                            const Text(
                              'Upload Aadhar Front Image',
                              style: TextStyle(
                                  color: kPrimaryColor, fontFamily: 'Urbanist',
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400,),
                            ),
                            const Text(
                              'Supports : JPEG, PNG',
                              style: TextStyle(color: blackSmall, fontFamily: 'Urbanist',
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400,),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        print("tapped on container");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AadhaarPhotoSelection()));
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [kPrimaryColor, kPrimaryColor],
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  height: 148,
                  child: Padding(
                    padding: const EdgeInsets.all(1),
                    child: Container(
                      decoration: BoxDecoration(
                        color: textFiledBackgroundColour,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                              child: SvgPicture.asset(
                                  "assets/icons/gallery.svg",
                                  colorFilter: const ColorFilter.mode(
                                      kPrimaryColor, BlendMode.srcIn))),
                          const Text(
                            'Upload Aadhar Back Image',
                            style: TextStyle( color: kPrimaryColor, fontFamily: 'Urbanist',
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,),
                          ),
                          const Text('Supports : JPEG, PNG',
                              style: TextStyle( color: blackSmall, fontFamily: 'Urbanist',
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400,)),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const CheckboxTerm(),
                const SizedBox(height: 46),
                CommonElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AadhaarOtpScreen()));
                  },
                  text: 'Proceed to E-Aadhaar',
                  upperCase: true,
                ),
                const SizedBox(height: 16),
                Center(
                  child: Text(
                  "Proceed with manual Aadhaar ",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: kPrimaryColor),
                  textAlign: TextAlign.center,
                ),
                ),
                const SizedBox(height: 16)
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed
    _aadhaarController.dispose();
    super.dispose();
  }
}
