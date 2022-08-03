import '../../domain/entities/product_entity.dart';

abstract class IGetAllProductsDatasource {
  List<ProductEntity> call();
}
