import 'package:e_commerce/components/rounded_icon_btn.dart';
import 'package:e_commerce/constants.dart';
import 'package:e_commerce/models/Product.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';
class ColorDots extends StatefulWidget {
  final Product product;

  const ColorDots({Key key, @required this.product}) : super(key: key);

  @override
  _ColorDotsState createState() => _ColorDotsState();
}

class _ColorDotsState extends State<ColorDots> {
  int selectedColor = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(getProportionateScreenWidth(15)),
      child: Row(
        children: [
          ...List.generate(
              widget.product.colors.length, (index) => generateDot(index)),
          Spacer(),
          RoundedIconBtn(iconData: Icons.remove, press: () {}),
          SizedBox(
            width: getProportionateScreenWidth(15),
          ),
          RoundedIconBtn(iconData: Icons.add, press: () {}),
        ],
      ),
    );
  }

  GestureDetector generateDot(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedColor = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: 2),
        padding: EdgeInsets.all(8),
        height: getProportionateScreenWidth(40),
        width: getProportionateScreenWidth(40),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
                color: selectedColor == index
                    ? kPrimaryColor
                    : Colors.transparent)),
        child: DecoratedBox(
          decoration: BoxDecoration(
              color: widget.product.colors[index], shape: BoxShape.circle),
        ),
      ),
    );
  }
}
