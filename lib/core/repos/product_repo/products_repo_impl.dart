import 'package:dartz/dartz.dart';
import 'package:fruit_hub/core/repos/product_repo/products_repo.dart';
import '../../entities/product_entity.dart';
import '../../errors/failures.dart';


class ProductsRepoImpl implements ProductsRepo {
  @override
  Future<Either<Failure, void>> addProduct(ProductEntity addProductInputEntity) {
    // TODO: implement addProduct
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<ProductEntity>>> getBestSellingProduct() {
    // TODO: implement getBestSellingProduct
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<ProductEntity>>> getProducts() {
    // TODO: implement getProducts
    throw UnimplementedError();
  }

}
