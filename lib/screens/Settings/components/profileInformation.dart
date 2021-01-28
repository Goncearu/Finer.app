import 'package:flutter/material.dart';

class ProfileInformation extends StatelessWidget {
  const ProfileInformation({
    Key key,
    @required this.accountName,
    @required this.accountEmail,

  }) : super(key: key);

  final String accountName;
  final String accountEmail;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text(
            accountName,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            accountEmail,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w200,
            ),
          ),
        ],
      ),
    );
  }
}
