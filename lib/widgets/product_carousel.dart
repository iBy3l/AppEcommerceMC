import 'package:ecommecer_color/widgets/product_cart.dart';
import 'package:flutter/material.dart';

import '../models/product_models.dart';

class ProductCarousel extends StatelessWidget {
  const ProductCarousel({
    Key? key,
    required this.product,
  }) : super(key: key);
  final List<Product> product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 05,
          ),
          scrollDirection: Axis.horizontal,
          itemCount: product.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 5),
              child: ProductCart(isWishlist: false, product: product[index]),
            );
          }),
    );
  }
}
