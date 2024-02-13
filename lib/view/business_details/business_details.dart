import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scaleup_app/utils/common_text_field.dart';

import '../../utils/common_elevted_button.dart';
import '../../utils/constants.dart';

class BusinessDetails extends StatefulWidget {
  const BusinessDetails({super.key});

  @override
  State<BusinessDetails> createState() => _BusinessDetailsState();
}

class _BusinessDetailsState extends State<BusinessDetails> {
  final TextEditingController _gstController = TextEditingController();
  final List<String> busnessTypeList = [
    'Proprietorship',
    'Partnership',
    'Pvt Ltd',
    'HUF',
    'LLP'
  ];

  String? selectedValue;

  List<DropdownMenuItem<String>> _addDividersAfterItems(List<String> items) {
    final List<DropdownMenuItem<String>> menuItems = [];
    for (final String item in items) {
      menuItems.addAll(
        [
          DropdownMenuItem<String>(
            value: item,
            child: Text(
              item,
            ),
          ),
          //If it's last item, we will not add Divider after it.
          if (item != items.last)
            DropdownMenuItem<String>(
              enabled: false,
              child: Divider(),
            ),
        ],
      );
    }
    return menuItems;
  }


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
                const Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 0),
                  child: Text(
                    "Step 1",
                    style: TextStyle(
                      fontFamily: 'Urbanist',
                      fontSize: 15.0,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                const Text(
                  "Business Details",
                  style: TextStyle(
                    fontFamily: 'Urbanist',
                    fontSize: 40.0,
                    color: blackSmall,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                CommonTextField(
                  controller: _gstController,
                  hintText: "07AACDW15215NF",
                  labelText: "GST Number(Optional)",
                ),
                SizedBox(
                  height: 16.0,
                ),
                CommonTextField(
                  controller: _gstController,
                  hintText: "Shree Balaji Traders ",
                  labelText: "Business Name(As Per Doc)",
                ),
                SizedBox(
                  height: 22.0,
                ),
                Text(
                  "Business Address ",
                  style: TextStyle(
                    fontFamily: 'Urbanist',
                    fontSize: 14.0,
                    color: gryColor,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: 16.0,
                ),
                CommonTextField(
                  controller: _gstController,
                  hintText: "Address Line 1",
                  labelText: "Address Line 1",
                ),
                SizedBox(
                  height: 16.0,
                ),
                CommonTextField(
                  controller: _gstController,
                  hintText: "Address Line 2",
                  labelText: "Address Line 2",
                ),
                SizedBox(
                  height: 16.0,
                ),
                CommonTextField(
                  controller: _gstController,
                  hintText: "Pin Code",
                  labelText: "Pin Code",
                ),
                SizedBox(
                  height: 16.0,
                ),
                CommonTextField(
                  controller: _gstController,
                  hintText: "City",
                  labelText: "City",
                ),
                SizedBox(
                  height: 16.0,
                ),
                CommonTextField(
                  controller: _gstController,
                  hintText: "State",
                  labelText: "State",
                ),
                SizedBox(
                  height: 16.0,
                ),
                DropdownButtonFormField2<String>(
                  isExpanded: true,
                  decoration: InputDecoration(
                    // Add Horizontal padding using menuItemStyleData.padding so it matches
                    // the menu padding when button's width is not specified.
                    contentPadding: const EdgeInsets.symmetric(vertical: 0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    // Add more decoration..
                  ),
                  hint: const Text(
                    'Business Type',
                    style: TextStyle(
                      color: blueColor,
                      fontFamily: 'Urbanist',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  items: _addDividersAfterItems(busnessTypeList),
                  validator: (value) {
                    if (value == null) {
                      return 'Please select Business Type';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    //Do something when selected item is changed.
                  },
                  onSaved: (value) {
                    selectedValue = value.toString();
                  },
                  buttonStyleData: const ButtonStyleData(
                    padding: EdgeInsets.only(right: 8),
                  ),
                  iconStyleData: const IconStyleData(
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black45,
                    ),
                    iconSize: 24,
                  ),
                  dropdownStyleData: DropdownStyleData(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  menuItemStyleData: const MenuItemStyleData(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                  ),
                ),
                SizedBox(
                  height: 36.0,
                ),
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
                              'Upload Business Proof',
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontFamily: 'Urbanist',
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const Text(
                              'Supports : PDF, JPEG, PNG',
                              style: TextStyle(
                                color: blackSmall,
                                fontFamily: 'Urbanist',
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        if (kDebugMode) {
                          print("tapped on container");
                        }
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 54.0),
                CommonElevatedButton(
                  onPressed: () {},
                  text: 'Next',
                  upperCase: true,
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
