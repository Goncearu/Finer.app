import 'package:armenu_app/utils/styles.dart';
import 'package:flutter/material.dart';

class PaymentButton extends StatelessWidget {
  const PaymentButton({
    Key key,
    @required this.press,
  }) : super(key: key);

  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4, bottom: 30),
      child: Center(
        child: Container(
          height: 50.0,
          decoration: BoxDecoration(boxShadow: [mainBoxShadow]),
          child: RaisedButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0)),
            padding: EdgeInsets.all(0.0),
            elevation: 0,
            child: Ink(
              decoration: BoxDecoration(
                  gradient: mainPrimaryGradient,
                  borderRadius: BorderRadius.circular(18.0)),
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  "Plătește nota",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
