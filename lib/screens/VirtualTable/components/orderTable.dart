import 'package:armenu_app/utils/styles.dart';
import 'package:flutter/material.dart';

class OrderTable extends StatefulWidget {
  @override
  _OrderTableState createState() => _OrderTableState();
}

class _OrderTableState extends State<OrderTable> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        height: 350,
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
                          child: Text('Comenzi efectuate',
                              style: Theme.of(context).textTheme.headline2)),
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
                height: 220,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    ExpansionTile(
                      title: Text(
                        'Amina Draghita ',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/Burger-Web.jpg'),
                      ),
                      trailing: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text('279 RON',
                              style: Theme.of(context).textTheme.bodyText1)),
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Chiftele marinate cu sos',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                            Text(
                              '1x',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                            Text(
                              '24 Ron',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ],
                        )
                      ],
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
                          child: Text('Total masa:',
                              style: Theme.of(context).textTheme.headline3),
                        ),
                        Padding(
                            padding:
                                const EdgeInsets.only(right: 25, bottom: 15),
                            child: Text(
                              '275 RON',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline3
                                  .copyWith(color: mainPrimaryColor),
                            ))
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
