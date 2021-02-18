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
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 2),
      child: RaisedButton(
        textColor: mainTextPrimaryColor,
        elevation: 10,
        padding: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onPressed: () {},
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: Container(
            decoration: BoxDecoration(
                gradient: mainPrimaryGradient,
                borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text(request, style: Theme.of(context).textTheme.button),
            ),
          ),
        ),
      ),
    );
  }
}
