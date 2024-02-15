import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scaleup_app/view/business_details/business_details.dart';
import 'package:scaleup_app/view/profile_screen/components/CreditLineApproved.dart';

import '../../utils/common_elevted_button.dart';
import '../../utils/constants.dart';


class ProfileReview extends StatefulWidget {
  const ProfileReview({super.key});

  @override
  State<ProfileReview> createState() => _ProfileReviewState();
}

class _ProfileReviewState extends State<ProfileReview> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                SizedBox(height: 50),
                Container(
                  alignment: Alignment.center,
                  child: SvgPicture.asset('assets/images/profile_review.svg'),
                ),
                SizedBox(height: 60),
                Padding(
                  padding: const EdgeInsets.only(left: 5,right: 5),
                  child: Column(
                    children: [
                      Text("Your profile is under review",style: TextStyle(color:kPrimaryColor,fontSize: 20),),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 50,right: 50,top: 10),
                  child: Column(
                    children: [
                      Text("Thank you for showing your interest \n our team will review your application \nand contact you within 48 Hrs.",style: TextStyle(color:Colors.black,fontSize: 14),textAlign: TextAlign.center,),
                    ],
                  ),
                ),
                SizedBox(height: 80),
                CommonElevatedButton(onPressed: (){  Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const CreditLineApproved();
                    },
                  ),
                );;}, text: "Back to home",upperCase: true, ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
