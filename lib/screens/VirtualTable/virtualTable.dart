import 'package:flutter/material.dart';


class VirtualTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                image: AssetImage('images/OuaPrajite-Web.jpg'),
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}