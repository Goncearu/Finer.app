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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Row(
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
        ],
      )),
    );
  }
}
