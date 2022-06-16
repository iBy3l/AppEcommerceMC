part of 'wishlist_bloc.dart';

abstract class WishlistState extends Equatable {
  @override
  List<Object> get props => [];
}

class WishlistLoading extends WishlistState {}

class WishlistLoaded extends WishlistState {
  final Wishlist wishlist;

  WishlistLoaded({this.wishlist = const Wishlist()});

  @override
  List<Object> get props => [wishlist];
}

class WishlistError extends WishlistState {}
