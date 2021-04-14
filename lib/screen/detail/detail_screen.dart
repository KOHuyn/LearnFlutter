import 'package:e_commerce/models/Product.dart';
import 'package:e_commerce/screen/detail/component/body.dart';
import 'package:flutter/material.dart';

import 'component/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments arguments =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
        backgroundColor: Color(0xFFF5F6F9),
        appBar: CustomAppbar(arguments.product.rating),
      body: Body(product: arguments.product,),
    );
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments(@required this.product);
}
