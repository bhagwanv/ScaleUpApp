
import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';




class ImagePickerWidgets extends StatelessWidget {
  const ImagePickerWidgets({Key? key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Container(
        height: 100,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(

              child: GestureDetector(
                onTap: () {
                  print("click Camera");

                },

                child: Column(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/photo_camera_icon.svg', width: 50,
                      height: 50,),
                    SizedBox(height: 10),
                    Text("Camera", style: TextStyle(color: Colors.black),)
                  ],
                ),
              ),

            ),


            Container(
              child: GestureDetector(
                onTap: () {
                  print("Click Gallery");


                },

                child: Column(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/photo_gallery_icon.svg', width: 50,
                      height: 50,),
                    SizedBox(height: 10),
                    Text("Gallery", style: TextStyle(color: Colors.black),)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
