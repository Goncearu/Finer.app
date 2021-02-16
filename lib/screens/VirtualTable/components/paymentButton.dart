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
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: RaisedButton(
        textColor: mainTextPrimaryColor,
        elevation: 10,
        padding: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)),
        onPressed: (){},
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: Container(
            decoration: BoxDecoration(
                gradient: mainPrimaryGradient,
                borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text(
                'Plateste nota',
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
