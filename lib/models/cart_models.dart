import 'package:ecommecer_color/models/models.dart';
import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class Cart extends Equatable {
  final List<Product> products;
  //
  const Cart({this.products = const <Product>[]});
  //
  //
  //

  // ? Define os getters de subtoral e calcular
  double get subtotal =>
      products.fold(0, (total, current) => total + current.price);
  //
  // ? Define os getters de subtoral e calcular
  double deliveryFree(subtotal) {
    if (subtotal >= 30.0) {
      return 0.0;
    } else {
      return 10.0;
    }
  }

  //
  // ? Calculo de Subtotal + Delivery = Total
  double total(subtotal, deliveryFree) {
    return subtotal + deliveryFree(subtotal);
  }

  //
  // ? Calculo: "Avisa para o usar quanto de valor falta pata não pagar o delivery"
  String freeDelivery(subtotal) {
    if (subtotal >= 30.0) {
      return 'You Have Free Delivery';
    } else {
      double missing = 30.0 - subtotal;
      return 'Add \$${missing.toStringAsFixed(2)} for Free Delivery';
    }
  }

  //
  //
  //
  //
  // ? Converte em string com 2 casas Hex
  String get subtotalString => subtotal.toStringAsFixed(2);
  //
  String get totalString => total(subtotal, deliveryFree).toStringAsFixed(2);
  //
  String get deliveryFreeString => deliveryFree(subtotal).toStringAsFixed(2);
  //
  String get freeDeliveryString => freeDelivery(subtotal);
  //
  @override
  List<Object?> get props => [products];
}
