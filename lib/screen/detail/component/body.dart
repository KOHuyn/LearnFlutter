import 'package:e_commerce/components/default_button.dart';
import 'package:e_commerce/components/rounded_icon_btn.dart';
import 'package:e_commerce/constants.dart';
import 'package:e_commerce/models/Product.dart';
import 'package:e_commerce/screen/detail/component/product_description.dart';
import 'package:e_commerce/screen/detail/component/product_images.dart';
import 'package:e_commerce/screen/detail/component/top_rounder_container.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'color_dots.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(children: [
        ProductImages(
          product: product,
        ),
        TopRounderContainer(
            color: Colors.white,
            child: Column(children: [
              ProductDescription(
                product: product,
                onPressSeeMore: () {},
              ),
              TopRounderContainer(
                color: Color(0xFFE5E3E3),
                child: Column(
                  children: [
                    ColorDots(
                      product: product,
                    ),
                    TopRounderContainer(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: SizeConfig.screenWidth * 0.15,
                              right: SizeConfig.screenWidth * 0.15,top: getProportionateScreenWidth(20),bottom: getProportionateScreenWidth(40)),
                          child: DefaultButton(
                            text: "Add to Card",
                            press: () {},
                          ),
                        ))
                  ],
                ),
              )
            ]))
      ]),
    );
  }
}
