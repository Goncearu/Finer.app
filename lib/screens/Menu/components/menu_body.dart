import 'package:flutter/material.dart';
import 'package:armenu_app/utils/styles.dart';

class MenuBody extends StatefulWidget {
  @override
  MenuBodyState createState() => MenuBodyState();
}

class MenuBodyState extends State<MenuBody> {
  List<bool> isSelected;

  @override
  void initState() {
    super.initState();
    isSelected = [false, true];
  }

  void goToCart() {}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 0, bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
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
                            constraints: BoxConstraints(
                                maxWidth: 150.0, minHeight: 50.0),
                            alignment: Alignment.center,
                            child: Text(
                              "Mancare",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Center(
                    child: Container(
                      height: 50.0,
                      decoration:
                          BoxDecoration(boxShadow: [secondaryBoxShadow]),
                      child: RaisedButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0)),
                        padding: EdgeInsets.all(0.0),
                        elevation: 0,
                        child: Ink(
                          decoration: BoxDecoration(
                              color: mainSecondaryColor,
                              borderRadius: BorderRadius.circular(18.0)),
                          child: Container(
                            constraints: BoxConstraints(
                                maxWidth: 150.0, minHeight: 50.0),
                            alignment: Alignment.center,
                            child: Text(
                              "Bautura",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: mainPrimaryColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
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
          Padding(
            padding:
                const EdgeInsets.only(top: 8, bottom: 8, left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    flex: 8,
                    child: Container(
                      decoration: BoxDecoration(
                        color: mainSecondaryColor,
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x20000000),
                            spreadRadius: 3,
                            blurRadius: 12,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 18, right: 18),
                        child: TextField(
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Cauta produsul',
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                            )), //SearchBar
                      ),
                    )),
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                          //goToCart button
                          decoration: BoxDecoration(
                            gradient: mainPrimaryGradient,
                            borderRadius: BorderRadius.circular(18),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x60B40202),
                                spreadRadius: 3,
                                blurRadius: 12,
                              ),
                            ],
                          ),
                          child: IconButton(
                            icon: Icon(Icons.shopping_cart),
                            color: Colors.white,
                            tooltip: 'Go to cart button',
                            onPressed: goToCart,
                          )),
                    ))
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 8, bottom: 8, left: 15, right: 15),
            child: Row(
              children: <Widget>[],
            ),
          )
        ],
      ),
    );
  }
}
