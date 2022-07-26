import '../entities/product_entity.dart';

abstract class IGetAllProductsRepository {
  List<ProductEntity> call();
}