import '../../entities/product_entity.dart';

abstract class GetProductByIdUsecase {
  ProductEntity? call(int id);
}
