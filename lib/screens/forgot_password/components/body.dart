import 'package:flutter/material.dart';
import 'package:siskang/components/custome_surffix_icon.dart';
import 'package:siskang/components/default_button.dart';
import 'package:siskang/components/form_error.dart';
import 'package:siskang/screens/forgot_password/components/forgot_form.dart';
import 'package:siskang/size_config.dart';

import '../../../components/powerred_by.dart';
import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
              ),
              child: Column(
                children: [
                  SizedBox(height: SizeConfig.screenHeight * 0.04),
                  Text(
                    "Forgot Password",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(28),
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Please enter your email and we will send \nyou a link to return to your account",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.1,
                  ),
                  ForgotPassForm()
                ],
              ),
            ),
          ),
          Spacer(),
          buildPowerredBy()
        ],
      ),
    );
  }
}
