import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imgUrl;

  const Category({required this.name, required this.imgUrl});

  @override
  List<Object?> get props => [name, imgUrl];

  static List<Category> categories = [
    const Category(
      name: 'DESSERTS',
      imgUrl: 'https://i.ibb.co/2PLJCXj/Sobremesas.png',
    ),
    const Category(
      name: 'BURGERS',
      imgUrl: 'https://i.ibb.co/Nm0htbV/Component-1.png',
    ),
    const Category(
      name: 'COMBO MEAL',
      imgUrl: 'https://i.ibb.co/jDTjzNS/COMBO.png',
    ),
  ];
}
