import 'package:e_commerce/components/custom_bottom_nav_bar.dart';
import 'package:e_commerce/screen/home/component/body.dart';
import 'package:flutter/material.dart';

import '../../enums.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.home,
      ),
    );
  }
}
