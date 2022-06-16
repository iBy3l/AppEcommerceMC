import 'package:flutter/material.dart';

import '../models/product_models.dart';

class ProductCart extends StatelessWidget {
  const ProductCart({
    Key? key,
    required this.product,
    this.widthFactor = 2.5,
    this.isWishlist = false,
  }) : super(key: key);
  final Product product;

  final double widthFactor;
  final bool isWishlist;

  @override
  Widget build(BuildContext context) {
    final sizeW = MediaQuery.of(context).size.width / widthFactor;
    final size = MediaQuery.of(context).size;
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/product', arguments: product);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.network(
              product.imgUrl,
              fit: BoxFit.cover,
              height: 80,
            ),
            Text(
              product.name,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '\$ ${product.price}',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_circle,
                      color: Colors.red,
                    )),
                isWishlist
                    ? Expanded(
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.delete,
                              color: Colors.red,
                            )),
                      )
                    : const SizedBox(),
              ],
            ),
          ],
        ),
      ),
    );

    // Container(
    //   height: MediaQuery.of(context).size.height * 50,
    //   decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(15), color: Colors.amber),
    //   child: Stack(
    //     children: [
    //       Padding(
    //         padding: const EdgeInsets.only(top: 8),
    //         child: SizedBox(
    //           width: size,
    //           height: 90,
    //           child: Image.network(product.imgUrl, fit: BoxFit.contain),
    //         ),
    //       ),
    //       Positioned(
    //         bottom: 10,
    //         left: 5,
    //         child: Container(
    //           width: size,
    //           height: 70,
    //           decoration: BoxDecoration(
    //             color: Colors.red.withAlpha(70),
    //           ),
    //         ),
    //       ),
    //       Positioned(
    //         bottom: 10,
    //         left: 0,
    //         child: Container(
    //           width: size,
    //           height: 65,
    //           decoration: const BoxDecoration(
    //             color: Colors.red,
    //           ),
    //           child: Padding(
    //             padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
    //             child: Row(
    //               children: [
    //                 Column(
    //                   mainAxisAlignment: MainAxisAlignment.center,
    //                   crossAxisAlignment: CrossAxisAlignment.start,
    //                   children: [
    //                     Text(
    //                       product.name,
    //                       style: Theme.of(context)
    //                           .textTheme
    //                           .headlineLarge!
    //                           .copyWith(color: Colors.white),
    //                     ),
    //                     Text(
    //                       "\$ ${Product.products[0].price} ",
    //                       style: Theme.of(context)
    //                           .textTheme
    //                           .headlineLarge!
    //                           .copyWith(color: Colors.white),
    //                     ),
    //                   ],
    //                 ),
    //                 IconButton(
    //                   onPressed: () {},
    //                   icon: const Icon(
    //                     Icons.add_circle,
    //                     color: Colors.white,
    //                   ),
    //                 )
    //               ],
    //             ),
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
