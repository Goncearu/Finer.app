import 'package:armenu_app/screens/menu/components/searchBarCart.dart';
import 'package:armenu_app/screens/menu/components/foodData.dart';
import 'package:flutter/material.dart';
import 'package:armenu_app/utils/styles.dart';
import 'package:armenu_app/utils/theme.dart';

import 'dart:ui';

class FoodCard extends StatefulWidget {
  const FoodCard(
      {Key key,
      this.index,
      this.category,
      this.image,
      this.title,
      this.desc,
      this.likes,
      this.hasAr,
      this.price,
      this.weight})
      : super(key: key);

  final double index;
  final String category;
  final String image;
  final String title;
  final String desc;
  final double likes;
  final bool hasAr;
  final double price;
  final String weight;

  FoodCardState createState() => FoodCardState();
  FoodCardState setState() => FoodCardState();
}

class FoodCardState extends State<FoodCard> {
  int quantity = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
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
        child: Row(children: [
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width - 30,
                height: 125.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.0),
                  image: DecorationImage(
                      image: NetworkImage(
                        widget.image,
                      ),
                      fit: BoxFit.cover),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      right: MediaQuery.of(context).size.width / 14,
                      top: 0,
                      child: ClipRRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 2.5, sigmaY: 2.5),
                          child: Container(
                            decoration: BoxDecoration(
                                color: mainPrimaryColor.withOpacity(0.6),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8))),
                            child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 6, 15, 6),
                                child: RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 11,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: widget.likes.toString(),
                                      ),
                                      WidgetSpan(
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 4),
                                          child: Icon(
                                            Icons.thumb_up_rounded,
                                            size: 12,
                                            color: mainSecondaryColor,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      bottom: 0,
                      child: ClipRRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 2.5, sigmaY: 2.5),
                          child: Container(
                            decoration: BoxDecoration(
                                color: mainPrimaryColor.withOpacity(0.6),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(18),
                                    bottomRight: Radius.circular(18),
                                    topRight: Radius.circular(18))),
                            child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(25, 6, 25, 6),
                                child: RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "hasAR",
                                      ),
                                    ],
                                  ),
                                )),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width - 30,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 7,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: Text(
                                widget.title,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: mainTextBlack,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    height: 1.3),
                              ),
                            ),
                            Text(
                              widget.desc,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: mainTextSemiBlack,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  height: 1.3),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              widget.price.toString() + " RON",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: mainTextBlack,
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              widget.weight,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: mainTextSemiBlack,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  height: 0.8),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8, bottom: 8),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    ButtonTheme(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 2.0,
                                          horizontal:
                                              8.0), //adds padding inside the button
                                      materialTapTargetSize: MaterialTapTargetSize
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
                                          onPressed: () {
                                            setState(() {
                                              if (quantity != 0)
                                                quantity = quantity - 1;
                                            });
                                          },
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0)),
                                          padding: EdgeInsets.all(0.0),
                                          child: Ink(
                                            decoration: BoxDecoration(
                                                gradient: mainPrimaryGradient,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10.0)),
                                            child: Container(
                                              constraints: BoxConstraints(
                                                  maxWidth: 30.0,
                                                  minHeight: 30.0),
                                              alignment: Alignment.center,
                                              child: Text(
                                                "-",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18),
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
                                        quantity.toString(),
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    ButtonTheme(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 2.0,
                                          horizontal:
                                              8.0), //adds padding inside the button
                                      materialTapTargetSize: MaterialTapTargetSize
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
                                          onPressed: () {
                                            setState(() {
                                              quantity = quantity + 1;
                                            });
                                          },
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0)),
                                          padding: EdgeInsets.all(0.0),
                                          child: Ink(
                                            decoration: BoxDecoration(
                                                gradient: mainPrimaryGradient,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10.0)),
                                            child: Container(
                                              constraints: BoxConstraints(
                                                  maxWidth: 30.0,
                                                  minHeight: 30.0),
                                              alignment: Alignment.center,
                                              child: Text(
                                                "+",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),

                              //plus minus cart buton
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ]));
  }
}
