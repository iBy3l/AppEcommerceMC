import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommecer_color/models/models.dart';
import 'package:flutter/material.dart';
import '../../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Mc Menu',
      ),
      body: SizedBox(
        height: double.infinity,
        child: Column(
          children: [
            // Carousel
            CarouselSlider(
              options: CarouselOptions(
                  aspectRatio: 1.5,
                  viewportFraction: 0.9,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height),
              items: Category.categories
                  .map((category) => HeroCarouselCard(category: category))
                  .toList(),
            ),
            // Text
            const SelectionTitle(title: 'RECOMMENDED'),

            //! Carousel Product
            ProductCarousel(
                product: Product.products
                    .where((product) => product.isRecommended)
                    .toList()),
            // Text

            const SelectionTitle(title: 'MOST POPULAR'),
            // ! Carousel Product
            ProductCarousel(
              product: Product.products
                  .where((product) => product.isPopular)
                  .toList(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomNavigatorButtomAppBar(),
    );
  }
}
