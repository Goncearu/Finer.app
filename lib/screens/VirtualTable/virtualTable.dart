import 'package:armenu_app/widgets/titleBar.dart';
import 'package:flutter/material.dart';

class VirtualTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBar(
              leading: Icon(Icons.menu),
              title: Text('Masa virtuala'),
              actions: [
                Icon(Icons.favorite),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Icon(Icons.search),
                ),
                Icon(Icons.more_vert),
              ],
              backgroundColor: Colors.purple,
            ),

            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                image: AssetImage('images/OuaPrajite-Web.jpg'),
              ),
            ),
            ),
            Container(


            ),
          ],
        ),
      ),
    );
  }
}