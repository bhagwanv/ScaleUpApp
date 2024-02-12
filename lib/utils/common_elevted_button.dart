import 'package:flutter/material.dart';

import 'my_colors.dart';

class CommonElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final bool upperCase;

  const CommonElevatedButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.upperCase = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        minimumSize: MaterialStateProperty.all<Size>(
          Size(MediaQuery.of(context).size.width, 50),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(MyColors.blueColor),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      ),
      onPressed: onPressed,
      child: upperCase ? Text(text.toUpperCase()) : Text(text),
    );
  }
}