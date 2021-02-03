import 'package:armenu_app/utils/styles.dart';
import 'package:flutter/material.dart';


class LogInRequestButton extends StatelessWidget {
  const LogInRequestButton({
    Key key,
    @required this.text, @required this.press
  }) : super(key: key);

  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: RaisedButton(
        textColor: mainTextPrimaryColor,
        elevation: 10,
        padding: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)),
        onPressed: press,
        child: SizedBox(
          width: double.infinity,
          height: 55,
          child: Container(
            decoration: BoxDecoration(
                gradient: mainPrimaryGradient,
                borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
