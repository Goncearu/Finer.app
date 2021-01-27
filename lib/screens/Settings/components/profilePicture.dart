import 'package:flutter/material.dart';


class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 175,
      width: 175,
      child: Stack(
        fit: StackFit.expand,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('images/ProfilePicture.jpg'),
          ),
          SizedBox(),
        ],
      ),
    );
  }
}
