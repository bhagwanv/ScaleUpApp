import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scaleup_app/utils/my_colors.dart';

import '../utils/aadhaar_number_formatter.dart';

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
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
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
                    labelText: 'Aadhar Card Number',
                  ),
                  onChanged: (value) {},
                ),
                const SizedBox(height: 24),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        MyColors.blueColor,
                        MyColors.blueColor
                      ],
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
                          SvgPicture.asset('assets/icons/gallery.svg',
                              colorFilter: ColorFilter.mode(MyColors.blueColor, BlendMode.srcIn)
                          ),
                          Text(
                            'Upload Aadhar Front Image',
                            style: TextStyle(color: MyColors.blueColor),
                          ),
                          Text('Supports : JPEG, PNG'),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        MyColors.blueColor,
                        MyColors.blueColor
                      ],
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
                                colorFilter: ColorFilter.mode(MyColors.blueColor, BlendMode.srcIn)
                            )
                          ),
                          Text(
                            'Upload Aadhar Back Image',
                            style: TextStyle(color: MyColors.blueColor),
                          ),
                          Text('Supports : JPEG, PNG'),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all<Size>(
                    Size(200, 48), // Width and height of the button
                  ),),
                  onPressed: () {
                    // Submit the form
                    if (kDebugMode) {
                      print('Aadhaar Card Number: ${_aadhaarController.text}');
                    }
                  },
                  child: const Text('Submit'),
                ),
                CupertinoCheckbox(
                  value: _isChecked,
                  onChanged: (value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                ),
                SizedBox(height: 16),
                Text(
                  _isChecked ? 'Checked' : 'Unchecked',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
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
