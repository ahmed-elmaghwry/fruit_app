import 'package:bloc/bloc.dart';
import 'package:fruit_hub/core/repos/product_repo/products_repo.dart';
import 'package:meta/meta.dart';

import '../entities/product_entity.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit({required this.productsRepo}) : super(ProductsInitial());
  int productsLength = 0;
 final ProductsRepo productsRepo;

 Future<void> getProducts()async{
   emit(ProductsLoading());
   final result = await productsRepo.getProducts();
   result.fold((error) {
     emit(ProductsFailure(errorMessage: error.message));
   }, (products) {
     emit(ProductsSuccess(products: products));
   });
 }
 Future<void> getBestSellingProducts()async{
   emit(ProductsLoading());
   final result = await productsRepo.getBestSellingProduct();
   result.fold((error) {
     emit(ProductsFailure(errorMessage: error.message));
   }, (products) {
     productsLength += products.length;
     emit(ProductsSuccess(products: products));
   });
 }


}
