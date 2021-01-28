
import 'package:flutter/material.dart';


class SettingsMenu extends StatelessWidget {
  const SettingsMenu({
    Key key,
    @required this.text,
    @required this.colour,
    @required this.press,

  }) : super(key: key);

  final String text;
  final Color colour;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 10),
      child: FlatButton(
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18)),
        color: colour,
        onPressed: press,
        child: Row(
          children: [
            Expanded(
              child: Text(
                text,
                style: TextStyle(
                  fontFamily: 'Galano',
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}
