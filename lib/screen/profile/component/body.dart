import 'package:e_commerce/constants.dart';
import 'package:e_commerce/screen/profile/component/profile_menu.dart';
import 'package:e_commerce/screen/profile/component/profile_pic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(
            height: 20,
          ),
          ProfileMenu(
              text: "My account",
              icon: "assets/icons/User Icon.svg",
              press: () {}),
          ProfileMenu(
              text: "Notification",
              icon: "assets/icons/Bell.svg",
              press: () {}),
          ProfileMenu(
              text: "Settings",
              icon: "assets/icons/Settings.svg",
              press: () {}),
          ProfileMenu(
              text: "Help Center",
              icon: "assets/icons/Question mark.svg",
              press: () {}),
          ProfileMenu(
              text: "Log Out", icon: "assets/icons/Log out.svg", press: () {}),
        ],
      ),
    );
  }
}
