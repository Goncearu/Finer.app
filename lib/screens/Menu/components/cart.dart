import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:armenu_app/utils/styles.dart';

void goToCart() {}

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.arrow_back,
                  color: mainPrimaryColor,
                ),
                Text(
                  'Cosul meu',
                  style: TextStyle(
                      fontSize: 18,
                      color: mainPrimaryColor,
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.shopping_cart_outlined,
                  color: mainPrimaryColor,
                )
              ],
            ),
            Center(
              child: Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x20000000),
                        spreadRadius: 10,
                        blurRadius: 12,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text('Comanda ta netrimisa',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                    flex: 7,
                                    child: Text(
                                        'Chiftele moldovenesti cu sos marinat')),
                                Expanded(
                                  flex: 3,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        '24 RON',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: mainTextBlack),
                                      ),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            ButtonTheme(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 2.0,
                                                  horizontal:
                                                      8.0), //adds padding inside the button
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap, //limits the touch area to the button area
                                              minWidth: 0, //wraps child's width
                                              height: 0, //wraps child's height
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Color(0x60B40202),
                                                      spreadRadius: 0.25,
                                                      blurRadius: 12,
                                                    )
                                                  ],
                                                ),
                                                child: RaisedButton(
                                                  onPressed: () {},
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0)),
                                                  padding: EdgeInsets.all(0.0),
                                                  child: Ink(
                                                    decoration: BoxDecoration(
                                                        gradient:
                                                            mainPrimaryGradient,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(6.0)),
                                                    child: Container(
                                                      constraints:
                                                          BoxConstraints(
                                                              maxWidth: 22.0,
                                                              minHeight: 22.0),
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text(
                                                        "-",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 18,
                                                            height: 1),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8, right: 8),
                                              child: Text(
                                                "22",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w600,
                                                    color: mainPrimaryColor),
                                              ),
                                            ),
                                            ButtonTheme(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 2.0,
                                                  horizontal:
                                                      8.0), //adds padding inside the button
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap, //limits the touch area to the button area
                                              minWidth: 0, //wraps child's width
                                              height: 0, //wraps child's height
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Color(0x60B40202),
                                                      spreadRadius: 0.25,
                                                      blurRadius: 12,
                                                    )
                                                  ],
                                                ),
                                                child: RaisedButton(
                                                  onPressed: () {},
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0)),
                                                  padding: EdgeInsets.all(0.0),
                                                  child: Ink(
                                                    decoration: BoxDecoration(
                                                        gradient:
                                                            mainPrimaryGradient,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(6.0)),
                                                    child: Container(
                                                      constraints:
                                                          BoxConstraints(
                                                              maxWidth: 22.0,
                                                              minHeight: 22.0),
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text(
                                                        "+",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 18,
                                                            height: 1),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ]),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const Divider(
                              color: mainTextSemiBlack,
                              height: 24,
                              thickness: 0.5,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: mainTextBlack),
                            ),
                            Text(
                              '800 RON',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: mainPrimaryColor),
                            )
                          ],
                        )
                      ],
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5, bottom: 30),
              child: Center(
                child: Container(
                  height: 50.0,
                  decoration: BoxDecoration(boxShadow: [mainBoxShadow]),
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
                          "Confirmă comanda",
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
            ),
          ],
        ),
      ),
    );
  }
}
