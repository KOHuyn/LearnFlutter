import 'package:e_commerce/components/custom_bottom_nav_bar.dart';
import 'package:e_commerce/components/rounded_icon_btn.dart';
import 'package:e_commerce/constants.dart';
import 'package:e_commerce/enums.dart';
import 'package:e_commerce/screen/home/home_screen.dart';
import 'package:e_commerce/screen/profile/component/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.profile,
      ),
    );
  }
}
