import 'package:flutter/material.dart';
// import 'package:shop_app/components/coustom_bottom_nav_bar.dart';
// import 'package:shop_app/enums.dart';
import 'package:test_app/enums.dart';

import '../../components/coustom_bottom_nav_bar.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
