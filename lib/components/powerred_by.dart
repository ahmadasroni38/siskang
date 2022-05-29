import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class buildPowerredBy extends StatelessWidget {
  const buildPowerredBy({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 30,
      ),
      child: Column(
        children: [
          Text(
            "Powered By",
            style: TextStyle(
              color: kTextColor,
              fontSize: getProportionateScreenWidth(13),
            ),
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.006),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(10)),
            padding: EdgeInsets.all(getProportionateScreenWidth(5)),
            height: getProportionateScreenHeight(50),
            width: getProportionateScreenWidth(50),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              "assets/logo_undiksha.png",
              height: getProportionateScreenHeight(265),
              width: getProportionateScreenWidth(235),
            ),
          ),
        ],
      ),
    );
  }
}
