import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String category;
  final String name;
  final String imgUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;

  const Product({
    required this.category,
    required this.name,
    required this.imgUrl,
    required this.price,
    required this.isRecommended,
    required this.isPopular,
  });

  @override
  List<Object?> get props =>
      [name, category, imgUrl, price, isPopular, isRecommended];

  static List<Product> products = [
    //! BURGERS HERE
    const Product(
      name: 'Big Mac #1',
      category: 'BURGERS',
      imgUrl:
          'https://cache-backend-mcd.mcdonaldscupones.com/media/image/product\$kfXxD5Xb/200/200/original?country=br',
      price: 4.99,
      isRecommended: true,
      isPopular: true,
    ),
    const Product(
      category: 'BURGERS',
      name: 'Big Tasty #2',
      imgUrl:
          'https://cache-backend-mcd.mcdonaldscupones.com/media/image/product\$kzXKz2eL/200/200/original?country=br',
      price: 5.99,
      isRecommended: true,
      isPopular: false,
    ),
    //!! DESSERTS HERE
    const Product(
      name: 'McShake Morango #1',
      category: 'DESSERTS',
      imgUrl:
          'https://cache-backend-mcd.mcdonaldscupones.com/media/image/product\$kpXm9ThH/200/200/original?country=br',
      price: 4.99,
      isRecommended: true,
      isPopular: true,
    ),
    const Product(
      category: 'DESSERTS',
      name: 'McFlurry Chocolate #2',
      imgUrl:
          'https://cache-backend-mcd.mcdonaldscupones.com/media/image/product\$kpXHChGA/200/200/original?country=br',
      price: 49.99,
      isRecommended: true,
      isPopular: false,
    ),
    //!! COMBO HERE
    const Product(
      name: 'Méqui Box #1',
      category: 'COMBO MEAL',
      imgUrl:
          'https://cache-backend-mcd.mcdonaldscupones.com/media/image/product\$ksXb0fyM/200/200/original?country=br',
      price: 4.99,
      isRecommended: true,
      isPopular: true,
    ),
    const Product(
      category: 'COMBO MEAL',
      name: 'Family Box#2',
      imgUrl:
          'https://cache-backend-mcd.mcdonaldscupones.com/media/image/product\$k7XnunEc/200/200/original?country=br',
      price: 49.99,
      isRecommended: true,
      isPopular: false,
    ),
  ];
}
