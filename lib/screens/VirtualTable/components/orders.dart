import 'package:armenu_app/utils/styles.dart';
import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        height: 255,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 15),
                        child: Text(
                          'Comenzi efectuate',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              wordSpacing: 2,
                              letterSpacing: 1),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 1,
                    height: 15,
                    endIndent: 15,
                    indent: 15,
                  ),
                ],
              ),
              Container(
                height: 120,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    ListTile(
                      title: Text('Alooo'),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/Burger-Web.jpg'),
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text(
                          '275 RON',
                          style: TextStyle(
                            fontSize: 14,
                            color: mainPrimaryColor,
                            wordSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text('Alooo'),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/Burger-Web.jpg'),
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text(
                          '275 RON',
                          style: TextStyle(
                            fontSize: 14,
                            color: mainPrimaryColor,
                            wordSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text('Alooo'),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/Burger-Web.jpg'),
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text(
                          '275 RON',
                          style: TextStyle(
                            fontSize: 14,
                            color: mainPrimaryColor,
                            wordSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Divider(
                    thickness: 1,
                    height: 15,
                    endIndent: 15,
                    indent: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25, bottom: 15),
                          child: Text(
                            'Total masa:',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              wordSpacing: 1,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 25, bottom: 15),
                          child: Text(
                            '275 RON',
                            style: TextStyle(
                              fontSize: 14,
                              color: mainPrimaryColor,
                              wordSpacing: 1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
