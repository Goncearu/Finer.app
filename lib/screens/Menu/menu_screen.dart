import 'package:flutter/material.dart';
import 'package:armenu_app/screens/menu/components/foodTabs.dart';

import 'components/cart.dart';
import 'components/menu_body.dart';

class MenuScreen extends StatelessWidget {
  static String routeName = '/menu';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MenuBody(),
    );
  }
}
