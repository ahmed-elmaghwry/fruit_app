import 'dart:ffi';

import 'package:fruit_hub/features/home/domain/entites/cart_item_entity.dart';

import '../../../../core/entities/product_entity.dart';

class CartEntity {
  final List<CartItemEntity> cartEntity;

  CartEntity({required this.cartEntity});


   addItemEntity({required CartItemEntity item}) {
    cartEntity.add(item);
  }


  void removeItemEntity({required CartItemEntity item}) {
    cartEntity.remove(item);
  }



  num calculateTotalPrice() {
    return cartEntity.fold<num>(
      0,
      (total, cartItem) => total + cartItem.calculateTotalPrice(),
    );
  }


  bool productIsExist(ProductEntity productEntity){

     for(var cartItem in cartEntity){
       if(cartItem.productEntity==productEntity){
         return true;
       }
     }
     return false;


  }

 CartItemEntity getCartItem({required ProductEntity product}){

     for(var cartItem in cartEntity){
       if(cartItem.productEntity==product){
         return cartItem;
       }
     }
     return CartItemEntity(productEntity: product, count: 1);



 }


}
