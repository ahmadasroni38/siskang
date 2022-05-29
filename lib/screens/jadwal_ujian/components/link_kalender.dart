import 'package:flutter/material.dart';

import '../../../constants.dart';

class LinkKalender extends StatelessWidget {
  final String nameDay;
  final String date;
  final bool aktiveLink;

  LinkKalender(this.nameDay, this.date, this.aktiveLink);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 138,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: aktiveLink ? kPrimaryColor : Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: kPrimaryColor),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            nameDay,
            style: TextStyle(
              color: aktiveLink ? Colors.white : kPrimaryColor,
              fontSize: 20,
            ),
          ),
          Text(
            date,
            style: TextStyle(
              color: aktiveLink ? Colors.white : kPrimaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
