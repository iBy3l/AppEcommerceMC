import 'package:ecommecer_color/models/models.dart';
import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({Key? key, required this.category}) : super(key: key);
  static const String routeName = '/catalog';

  static Route route({required Category category}) {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (context) => CatalogScreen(category: category));
  }

  final Category category;

  @override
  Widget build(BuildContext context) {
    final List<Product> categoryProducs = Product.products
        .where((product) => product.category == category.name)
        .toList();
    return Scaffold(
      appBar: CustomAppBar(
        title: category.name,
      ),
      bottomNavigationBar: const CustomNavigatorButtomAppBar(),
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.15,
        ),
        itemCount: categoryProducs.length,
        itemBuilder: (BuildContext context, int index) {
          return Center(
              child: ProductCart(
            product: categoryProducs[index],
            widthFactor: 2.2,
          ));
        },
      ),
      //
    );
  }
}
