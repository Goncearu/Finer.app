
import 'package:armenu_app/homePage.dart';
import 'package:armenu_app/screens/Settings/settings_screen.dart';
import 'package:armenu_app/screens/SignIn/forgotPassword/forgot_password_screen.dart';
import 'package:armenu_app/screens/SignIn/signUp/components/verify_screen.dart';
import 'package:armenu_app/screens/SignIn/signUp/signUp_screen.dart';
import 'package:armenu_app/screens/Waiter/waiter_screen.dart';
import 'package:armenu_app/screens/menu/menu_screen.dart';
import 'package:flutter/material.dart';
import 'screens/SignIn/signIn_screen.dart';


final Map<String, WidgetBuilder> routes = {
  HomePage.routeName: (context) => HomePage(),
  SignInScreen.routeName: (context) => SignInScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  VerifyScreen.routeName: (context) => VerifyScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  MenuScreen.routeName: (context) => MenuScreen(),
  SettingsScreen.routeName: (context) => SettingsScreen(),
  WaiterScreen.routeName: (context) => WaiterScreen(),

};
