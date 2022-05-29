import 'package:flutter/material.dart';

import '../forgot_password/components/body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  static String routeName = "/forgot_password";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Forgot Password",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0XFF8B8B8B),
              fontSize: 18,
            ),
          ),
        ),
        body: Body());
  }
}
