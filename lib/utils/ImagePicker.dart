import 'dart:io';

import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:scaleup_app/view/pancard_screen/PancardScreen.dart';

enum ImageSourceType { gallery, camera }

class ImagePickerWidgets extends StatefulWidget {
  const ImagePickerWidgets({
    Key? key,
  }) : super(key: key);

  @override
  State<ImagePickerWidgets> createState() => _ImagePickerWidgetsState();
}

class _ImagePickerWidgetsState extends State<ImagePickerWidgets> {
  var imagePicker;
  var _image;

  Future<void> _handleURLButtonPress(BuildContext context, var type) async {
    var source = (type == ImageSourceType.camera)
        ? ImageSource.camera
        : ImageSource.gallery;

    XFile image = await imagePicker.pickImage(
        source: source,
        imageQuality: 50,
        preferredCameraDevice: CameraDevice.front);
    setState(() {
      _image = File(image.path);

      Navigator.push(context,MaterialPageRoute(
        builder: (context) => PancardScreen(image: _image),
      ),);

    });
  }

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
                  _handleURLButtonPress(context, ImageSourceType.camera);
                },
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/photo_camera_icon.svg',
                      width: 50,
                      height: 50,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Camera",
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: GestureDetector(
                onTap: () {
                  print("Click Gallery");
                  _handleURLButtonPress(context, ImageSourceType.gallery);
                },
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/photo_gallery_icon.svg',
                      width: 50,
                      height: 50,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Gallery",
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    imagePicker = new ImagePicker();
  }
}
