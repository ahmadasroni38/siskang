import 'package:flutter/material.dart';

import 'package:siskang/screens/forgot_password/forgot_password_screen.dart';
import 'package:siskang/screens/main_screen.dart';
import 'package:siskang/screens/notification/notification_screen.dart';
import 'package:siskang/screens/sign_in/sign_in_screen.dart';
import 'package:siskang/screens/splash/splash_screen.dart';

// we use name routes
// all our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  MainScreen.routeName: (context) => MainScreen(),
  NotificationScreen.routeName: (context) => NotificationScreen()
};
