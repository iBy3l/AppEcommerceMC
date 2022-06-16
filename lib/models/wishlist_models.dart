import 'package:ecommecer_color/models/models.dart';
import 'package:equatable/equatable.dart';

class Wishlist extends Equatable {
  final List<Product> product;

  const Wishlist({this.product = const <Product>[]});

  @override
  List<Object?> get props => [product];
}
