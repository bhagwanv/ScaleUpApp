
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scaleup_app/responsive/Responsive.dart';

import '../../constants.dart';
import 'Background.dart';
import 'components/LoginForm.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Background(child: SingleChildScrollView(child: Responsive(mobile: LoginScreen(), desktop: Row()),),);
  }

}

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        LoginScreenTopImage(),
        Row(
          children: [
            Spacer(),
            Expanded(
              flex: 8,
              child: LoginForm(),
            ),
            Spacer(),
          ],
        ),
      ],
    );
  }
}

class LoginScreenTopImage extends StatelessWidget {
  const LoginScreenTopImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "Enter\nPhone Number",
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.5),
        ),
        SizedBox(height: defaultPadding * 2),
        Text(
          "Please Enter Your registered number.",
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10.5),
          textAlign: TextAlign.start,
        ),
        Row(
          children: [
            Spacer(),
          ],
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
