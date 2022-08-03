import '../../entities/product_entity.dart';

abstract class IGetAllProductsUsecase {
  List<ProductEntity> call();
}
