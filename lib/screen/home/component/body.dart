import 'package:e_commerce/components/categories.dart';
import 'package:e_commerce/components/discount_banner.dart';
import 'package:e_commerce/components/home_header.dart';
import 'package:e_commerce/components/popular_product.dart';
import 'package:e_commerce/components/special_offer.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            HomeHeader(),
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            DisCountBanner(),
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            Categories(),
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            SpecialOffer(),
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            PopularProduct(),
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
          ],
        ),
      ),
    );
  }
}
