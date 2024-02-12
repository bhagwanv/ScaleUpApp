import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scaleup_app/utils/my_colors.dart';
import 'package:scaleup_app/view/aadhaar_screen/aadhaar_otp_screen.dart';

import '../../utils/aadhaar_number_formatter.dart';
import '../../utils/common_elevted_button.dart';
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
    bool _isChecked = false;
    return SafeArea(
      top: true,
      bottom: true,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
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
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 40),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 44),
                  child: Text(
                    "Please validate your Aadhaar number",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
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
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: MyColors.blueColor),
                    ),
                    filled: true,
                    fillColor: MyColors.lightBlueColor,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: MyColors.blueColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: MyColors.blueColor),
                    ),
                    hintText: 'XXXX XXXX XXXX',
                    labelText: 'Aadhaar Card Number',
                  ),
                  onChanged: (value) {},
                ),
                const SizedBox(height: 24),
                Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [MyColors.blueColor, MyColors.blueColor],
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  height: 148,
                  child: Padding(
                    padding: const EdgeInsets.all(1),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                              child: SvgPicture.asset(
                                  "assets/icons/gallery.svg",
                                  colorFilter: const ColorFilter.mode(
                                      MyColors.blueColor, BlendMode.srcIn))),
                          const Text(
                            'Upload Aadhar Front Image',
                            style: TextStyle(
                                color: MyColors.blueColor, fontSize: 12),
                          ),
                          const Text(
                            'Supports : JPEG, PNG',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [MyColors.blueColor, MyColors.blueColor],
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  height: 148,
                  child: Padding(
                    padding: const EdgeInsets.all(1),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                              child: SvgPicture.asset(
                                  "assets/icons/gallery.svg",
                                  colorFilter: const ColorFilter.mode(
                                      MyColors.blueColor, BlendMode.srcIn))),
                          const Text(
                            'Upload Aadhar Back Image',
                            style: TextStyle(
                                color: MyColors.blueColor, fontSize: 12),
                          ),
                          const Text('Supports : JPEG, PNG',
                              style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const CheckboxTerm(),
                const SizedBox(height: 16),
                CommonElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>  const AadhaarOtpScreen()));
                  },
                  text: 'Proceed to E-Aadhaar',
                ),
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
