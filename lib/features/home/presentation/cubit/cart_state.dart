part of 'cart_cubit.dart';

@immutable
sealed class CartState {}

final class CartInitial extends CartState {}

final class CartProductAdded extends CartState {}

final class CartProductRemoved extends CartState {}

final class CartProductMo5 extends CartState {}

final class CartProductPriceless extends CartState {
  final String message;

  CartProductPriceless(this.message);
}
