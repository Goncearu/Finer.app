
import 'package:armenu_app/screens/VirtualTable/components/virtualTable_body.dart';
import 'package:armenu_app/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class VirtualTable extends StatefulWidget {

  static String routeName = '/virtualTable';

  @override
  _VirtualTableState createState() => _VirtualTableState();
}

class _VirtualTableState extends State<VirtualTable> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
        'Hanul Drumetului',
        style: TextStyle(
        color: mainPrimaryColor,
        fontSize: 20,
        ),)
      ),
      body: VirtualTableBody()
    );
  }
}
