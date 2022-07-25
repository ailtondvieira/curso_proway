
import '../repositories/get_all_products_repository.dart';

import '../entities/product_entity.dart';
import 'get_all_products_usecase.dart';

class GetAllProductsUsecaseImp implements IGetAllProductsUsecase {
  final IGetAllProductsRepository _getAllProductsRepository;
  GetAllProductsUsecaseImp(this._getAllProductsRepository);
  
  @override
  List<ProductEntity> call() {
    return _getAllProductsRepository.call();
  }
}