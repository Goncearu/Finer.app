import 'package:armenu_app/utils/styles.dart';
import 'package:flutter/material.dart';

class WaiterRequestButton extends StatelessWidget {
  const WaiterRequestButton({
    Key key,
    @required this.request,
    @required this.press,
  }) : super(key: key);

  final String request;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4, bottom: 2, left: 40, right: 40),
      child: Center(
        child: Container(
          height: 50.0,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Color(0x80B40202),
              spreadRadius: 0.45,
              blurRadius: 12,
            )
          ]),
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
                  request,
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
