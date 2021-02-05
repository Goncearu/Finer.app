
import 'package:armenu_app/screens/SignIn/forgotPassword/forgot_password_screen.dart';
import 'package:armenu_app/screens/SignIn/signUp/signUp_screen.dart';
import 'package:armenu_app/screens/menu/menu_screen.dart';
import 'package:flutter/material.dart';
import 'screens/SignIn/signIn_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SignInScreen.routeName: (context) => SignInScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  MenuScreen.routeName: (context) => MenuScreen(),

};
