import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scaleup_app/view/Bank_details_screen/BankDetailsScreen.dart';

import '../../../utils/common_elevted_button.dart';
import '../../../utils/constants.dart';
import '../../business_details/business_details.dart';

class CreditLineApproved extends StatefulWidget {
  const CreditLineApproved({super.key});

  @override
  State<CreditLineApproved> createState() => _CreditLineApprovedState();
}

class _CreditLineApprovedState extends State<CreditLineApproved> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              SizedBox(height: 30),
              Container(
                alignment: Alignment.center,
                child:
                    SvgPicture.asset('assets/images/credit_line_approved.svg'),
              ),
              Column(
                children: [
                  SizedBox(height: 20),
                  Text(
                    "Congratulations !! ",
                    style: TextStyle(color: kPrimaryColor, fontSize: 18),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "You are qualified for credit limit of",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Text(
                    "₹ 1,00,000.00",
                    style: TextStyle(color: Colors.black, fontSize: 30),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 40),
                  Text.rich(TextSpan(
                      text: 'PF Charges :',style: TextStyle(color: Colors.black, fontSize: 15),
                      children: <InlineSpan>[
                        TextSpan(
                          text: '₹ 2360.00',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        )
                      ])),
                  Text(
                    "(Inclusive of GST)",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Text.rich(TextSpan(
                      text: 'Convenience fee : :',style: TextStyle(color: Colors.black, fontSize: 15),
                      children: <InlineSpan>[
                        TextSpan(
                          text: '2%+GST',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        )
                      ])),

                  Text(
                    "(will be charged on every transaction)",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(height: 80),
              CommonElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const BankDetailsScreen();
                      },
                    ),
                  );
                  ;
                },
                text: "Proceed to e-mandate",
                upperCase: true,
              ),
              SizedBox(height: 20),
              Text(
                "Need Higher Limit",
                style: TextStyle(color: kPrimaryColor),
                textAlign: TextAlign.center,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
