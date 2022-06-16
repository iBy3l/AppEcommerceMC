import 'dart:async';
import 'dart:ui';

import 'package:ecommecer_color/models/cotegory_models.dart';
import 'package:flutter/material.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({Key? key}) : super(key: key);

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  late PageController _pageController;

  double currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: 0.8,
      initialPage: 0,
    );
    _pageController.addListener(() {
      Future.delayed(Duration.zero, () {
        setState(() {
          currentPage = _pageController.page ?? 0;
          // print(_pageController);
        });
      });
    });

    Timer.periodic(const Duration(seconds: 3), (timer) {
      Future.delayed(Duration.zero, (() {
        final double pages = _pageController.page ?? 0;
        if (pages >= 4) {
          _pageController.previousPage(
            curve: Curves.linear,
            duration: const Duration(seconds: 1),
          );
        } else if (pages >= 0) {
          //pageCount++;
          _pageController.nextPage(
              duration: const Duration(seconds: 1), curve: Curves.linear);
        }
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    //  final size = MediaQuery.of(context).size;
    return SizedBox(
      height: 400,
      child: Flexible(
        flex: 2,
        child: PageView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: Category.categories.length,
            controller: _pageController,
            itemBuilder: (BuildContext context, index) {
              var interpolado = (index - (currentPage)).abs();
              final pul = lerpDouble(0, 0.6, interpolado) ?? 0.0;

              // print(interpolado);
              // print(" current: $currentPage");

              return Transform.translate(
                offset: Offset(0, pul * -20),
                child: Row(
                  children: Category.categories
                      .map((category) => HeroCarouselCard(category: category))
                      .toList(),

                  //  Category.categories
                  //     .map((category) => HeroCarouselCard(category: category))
                  //     .toList(),
                ),
              );
            }),
      ),
    );
  }
}

class HeroCarouselCard extends StatelessWidget {
  final Category category;

  const HeroCarouselCard({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
        child: Stack(
          children: [
            Image.network(
              category.imgUrl,
              fit: BoxFit.cover,
              width: 1000,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(200, 0, 0, 0),
                    Color.fromARGB(0, 0, 0, 0),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                )),
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                child: Text(
                  category.name,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
