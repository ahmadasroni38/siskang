import 'package:flutter/material.dart';

class Badge extends StatelessWidget {
  final Color? colorBadge;
  final String titleBadge;
  final Widget iconBadge;

  Badge(
    this.colorBadge,
    this.titleBadge,
    this.iconBadge,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 1,
        horizontal: 4,
      ),
      decoration: BoxDecoration(
        color: colorBadge,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          iconBadge,
          Text(
            titleBadge,
            style: TextStyle(
              color: Colors.white,
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
