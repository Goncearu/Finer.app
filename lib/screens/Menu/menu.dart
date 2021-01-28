import 'package:flutter/material.dart';
import 'package:armenu_app/utils/styles.dart';

class Menu extends StatefulWidget {
  @override
  MenuState createState() => MenuState();
}

class MenuState extends State<Menu> {
  List<bool> isSelected;

  @override
  void initState() {
    super.initState();
    isSelected = [false, true];
  }

  void goToCart() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 0, bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ToggleButtons(
                  borderRadius: BorderRadius.circular(20),
                  color: mainSecondaryColor,
                  selectedColor: mainSecondaryColor,
                  splashColor: mainPrimaryColor,
                  fillColor: mainPrimaryColor,
                  renderBorder: false,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.only(
                              left: 25, right: 25, top: 12, bottom: 12),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Icon(
                                  Icons.local_pizza,
                                  size: 20.0,
                                  semanticLabel:
                                      'Text to announce in accessibility modes',
                                ),
                              ),
                              Text(
                                'Mancare',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          )),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.only(
                              left: 25, right: 25, top: 12, bottom: 12),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Icon(
                                  Icons.local_drink_sharp,
                                  size: 20.0,
                                  semanticLabel:
                                      'Text to announce in accessibility modes',
                                ),
                              ),
                              Text(
                                'Bauturi',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          )),
                    ),
                  ],
                  isSelected: isSelected,
                  onPressed: (index) {
                    setState(() {
                      for (var i = 0; i < isSelected.length; i++) {
                        if (i == index) {
                          isSelected[i] = true;
                        } else {
                          isSelected[i] = false;
                        }
                      }
                    });
                  },
                )
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
                            obscureText: true,
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
      )),
    );
  }
}
