import 'package:armenu_app/screens/VirtualTable/components/orderTable.dart';
import 'package:armenu_app/screens/VirtualTable/components/paymentButton.dart';
import 'package:armenu_app/utils/styles.dart';
import 'package:flutter/material.dart';

class VirtualTableBody extends StatefulWidget {
  @override
  _VirtualTableBodyState createState() => _VirtualTableBodyState();
}

class _VirtualTableBodyState extends State<VirtualTableBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              height: 150,
              decoration: BoxDecoration(
                  gradient: mainPrimaryGradient,
                  borderRadius: BorderRadius.circular(20)),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(20)),
            ),
            OrderTable(),
            PaymentButton(press: () {})
          ],
        ),
      ),
    );
  }
}
