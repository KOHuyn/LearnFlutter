import 'package:e_commerce/components/product_card.dart';
import 'package:e_commerce/components/section_title.dart';
import 'package:e_commerce/models/Product.dart';
import 'package:flutter/material.dart';

import '../size_config.dart';

class PopularProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(text: "Special for you", press: () {}),
        SizedBox(
          height: getProportionateScreenWidth(20),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(demoProducts.length,
                      (index) => ProductCard(product: demoProducts[index])),
              SizedBox(
                width: getProportionateScreenWidth(20),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
