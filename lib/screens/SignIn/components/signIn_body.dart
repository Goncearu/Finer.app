import 'dart:ui';
import 'package:armenu_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'sign_form.dart';

class SignInBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 50),
              Text(
                'Finer',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50,
                color: mainPrimaryColor,
              ),
              ),
              SignForm(),
              Container(
                padding: EdgeInsets.all(12),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: mainSecondaryColor,
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
        ),
    );
  }
}
