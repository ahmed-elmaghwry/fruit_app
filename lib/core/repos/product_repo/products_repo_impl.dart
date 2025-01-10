import 'package:dartz/dartz.dart';
import 'package:fruit_hub/core/repos/product_repo/products_repo.dart';
import 'package:fruit_hub/core/services/data_service.dart';
import '../../entities/product_entity.dart';
import '../../errors/failures.dart';
import '../../models/product_model.dart';
import '../../utils/backend_endpoint.dart';

class ProductsRepoImpl implements ProductsRepo {
  ProductsRepoImpl({required this.databaseService});

  DatabaseService databaseService;

  @override
  Future<Either<Failure, List<ProductEntity>>> getBestSellingProduct() async {
    try {
      var data = await databaseService.getData(
          path: BackendEndpoint.getProducts,
          query: {
            'limit': 10,
            'orderBy': 'sellingCount',
            'descending': true
          }) as List<Map<String, dynamic>>;

      List<ProductEntity> products =
          data.map((e) => ProductModel.fromJson(e).toEntity()).toList();

      return right(products);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<ProductEntity>>> getProducts() async {
    try {
      var data = await databaseService.getData(
          path: BackendEndpoint.getProducts) as List<Map<String, dynamic>>;

      List<ProductEntity> products =
          data.map((e) => ProductModel.fromJson(e).toEntity()).toList();

      return right(products);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
