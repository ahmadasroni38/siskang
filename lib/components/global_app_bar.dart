import 'package:flutter/material.dart';
import 'package:siskang/screens/home/components/icon_btn_with_counter.dart';
import 'package:siskang/screens/notification/notification_screen.dart';

class GlobalAppBar extends StatelessWidget {
  final String _title;

  const GlobalAppBar(this._title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 1,
      toolbarHeight: 60,
      backgroundColor: Colors.white,
      centerTitle: true,
      title: _title == 'default'
          ? Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Hai, Ahmad Asroni',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff020202),
                          ),
                        ),
                        Text(
                          '2129101009 - Ilmu Komputer',
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff9A9A9A),
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconBtnWithCounter(
                    svgSrc: "assets/icons/Bell.svg",
                    numOfitem: 3,
                    press: () {
                      Navigator.pushNamed(
                          context, NotificationScreen.routeName);
                    },
                  ),
                ],
              ),
            )
          : Text(
              _title,
              maxLines: 1,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xff020202),
              ),
            ),
    );
  }
}
