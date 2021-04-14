import 'package:flutter/material.dart';

import '../../../size_config.dart';

class TopRounderContainer extends StatelessWidget {
  final Color color;
  final Widget child;

  const TopRounderContainer(
      {Key key, @required this.color, @required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: getProportionateScreenWidth(20)),
      width: double.infinity,
      child: child,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),
    );
  }
}
