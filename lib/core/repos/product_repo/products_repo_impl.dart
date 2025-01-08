import 'package:dartz/dartz.dart';
import 'package:fruit_hub/core/repos/product_repo/products_repo.dart';
import 'package:fruit_hub/core/services/data_service.dart';
import '../../entities/product_entity.dart';
import '../../errors/failures.dart';

class ProductsRepoImpl implements ProductsRepo {
  ProductsRepoImpl({required this.databaseService});

  DatabaseService databaseService;

  @override
  Future<Either<Failure, List<ProductEntity>>> getBestSellingProduct() {

    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<ProductEntity>>> getProducts() {
    // TODO: implement getProducts
    throw UnimplementedError();
  }
}
