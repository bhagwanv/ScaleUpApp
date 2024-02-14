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
  final List<String> businessTypeList = [
    'Proprietorship',
    'Partnership',
    'Pvt Ltd',
    'HUF',
    'LLP'
  ];
  String? selectedBusinessTypeValue;

  final List<String> monthlySalesTurnoverList = [
    'Upto 3 Lacs',
    '3 Lacs - 10 Lacs',
    '10 Lacs - 25 Lacs',
    'Above 25 Lacs '
  ];
  String? selectedMonthlySalesTurnoverValue;

  final List<String> chooseBusinessProofList = [
    'GST Certificate',
    'Udyog Aadhaar Certificate',
    'Shop Establishment Certificate',
    'Trade License',
    'Others'
  ];
  String? selectedChooseBusinessProofValue;

  List<DropdownMenuItem<String>> _addDividersAfterItems(List<String> items) {
    final List<DropdownMenuItem<String>> menuItems = [];
    for (final String item in items) {
      menuItems.addAll(
        [
          DropdownMenuItem<String>(
            value: item,
            child: Text(
              item,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          ),
          //If it's last item, we will not add Divider after it.
          if (item != items.last)
            const DropdownMenuItem<String>(
              enabled: false,
              child: Divider(
                height: 0.1,
              ),
            ),
        ],
      );
    }
    return menuItems;
  }

  List<double> _getCustomItemsHeights(List<String> items) {
    final List<double> itemsHeights = [];
    for (int i = 0; i < (items.length * 2) - 1; i++) {
      if (i.isEven) {
        itemsHeights.add(40);
      }
      //Dividers indexes will be the odd indexes
      if (i.isOdd) {
        itemsHeights.add(4);
      }
    }
    return itemsHeights;
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
                    fillColor: textFiledBackgroundColour,
                    filled: true,
                    contentPadding: const EdgeInsets.symmetric(vertical: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: kPrimaryColor, width: 1),
                    ),
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
                  items: _addDividersAfterItems(businessTypeList),
                  value: selectedBusinessTypeValue,
                  onChanged: (String? value) {
                    setState(() {
                      selectedBusinessTypeValue = value;
                    });
                  },
                  buttonStyleData: const ButtonStyleData(
                    padding: EdgeInsets.only(right: 8),
                  ),
                  dropdownStyleData: const DropdownStyleData(
                    maxHeight: 200,
                  ),
                  menuItemStyleData: MenuItemStyleData(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    customHeights: _getCustomItemsHeights(businessTypeList),
                  ),
                  iconStyleData: const IconStyleData(
                    openMenuIcon: Icon(Icons.arrow_drop_up),
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                DropdownButtonFormField2<String>(
                  isExpanded: true,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 16),
                    fillColor: textFiledBackgroundColour,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: kPrimaryColor, width: 1),
                    ),
                  ),
                  hint: const Text(
                    'Monthly Sales Turnover',
                    style: TextStyle(
                      color: blueColor,
                      fontFamily: 'Urbanist',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  items: _addDividersAfterItems(monthlySalesTurnoverList),
                  value: selectedMonthlySalesTurnoverValue,
                  onChanged: (String? value) {
                    setState(() {
                      selectedMonthlySalesTurnoverValue = value;
                    });
                  },
                  buttonStyleData: const ButtonStyleData(
                    padding: EdgeInsets.only(right: 8),
                  ),
                  dropdownStyleData: const DropdownStyleData(
                    maxHeight: 200,
                  ),
                  menuItemStyleData: MenuItemStyleData(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    customHeights:
                        _getCustomItemsHeights(monthlySalesTurnoverList),
                  ),
                  iconStyleData: const IconStyleData(
                    openMenuIcon: Icon(Icons.arrow_drop_up),
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                CommonTextField(
                  controller: _gstController,
                  hintText: "Business Incorporation Date",
                  labelText: "Business Incorporation Date",
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
                DropdownButtonFormField2<String>(
                  isExpanded: true,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 16),
                    fillColor: textFiledBackgroundColour,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: kPrimaryColor, width: 1),
                    ),
                  ),
                  hint: const Text(
                    'Choose Business Proof',
                    style: TextStyle(
                      color: blueColor,
                      fontFamily: 'Urbanist',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  items: _addDividersAfterItems(chooseBusinessProofList),
                  value: selectedChooseBusinessProofValue,
                  onChanged: (String? value) {
                    setState(() {
                      selectedChooseBusinessProofValue = value;
                    });
                  },
                  buttonStyleData: const ButtonStyleData(
                    padding: EdgeInsets.only(right: 8),
                  ),
                  dropdownStyleData: const DropdownStyleData(
                    maxHeight: 200,
                  ),
                  menuItemStyleData: MenuItemStyleData(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    customHeights:
                    _getCustomItemsHeights(chooseBusinessProofList),
                  ),
                  iconStyleData: const IconStyleData(
                    openMenuIcon: Icon(Icons.arrow_drop_up),
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                CommonTextField(
                  controller: _gstController,
                  hintText: "Business Document Number",
                  labelText: "Business Document Number",
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
