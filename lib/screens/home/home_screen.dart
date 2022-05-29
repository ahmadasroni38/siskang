import 'package:flutter/material.dart';
import 'package:siskang/screens/home/components/icon_btn_with_counter.dart';

import '../../components/global_app_bar.dart';
import '../../size_config.dart';
import '../home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
