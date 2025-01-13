import 'package:bloc/bloc.dart';
import 'package:fruit_hub/core/entities/product_entity.dart';
import 'package:fruit_hub/features/home/domain/entites/cart_entity.dart';
import 'package:meta/meta.dart';

import '../../domain/entites/cart_item_entity.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());

  CartEntity cartEntity = CartEntity(cartEntity: []);

  void addProduct({required ProductEntity productEntity}) {
// check if product is already in cart
    bool isExits = cartEntity.productIsExist(productEntity);
    CartItemEntity cartItem = cartEntity.getCartItem(product: productEntity);
    // if product is already in cart, increase count
    if (isExits) {
      cartItem.increaseCount();

      // increase count
    } else {
// if product is not in cart, add it
      cartEntity.addItemEntity(item: cartItem);
    }

    emit(CartProductAdded());
  }
}
