import 'package:armenu_app/screens/SignIn/forgotPassword/forgot_password_screen.dart';
import 'package:armenu_app/screens/SignIn/signUp/signUp_screen.dart';
import 'package:flutter/material.dart';
import 'screens/SignIn/signIn_screen.dart';


final Map<String, WidgetBuilder> routes = {
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),

  // LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),

};