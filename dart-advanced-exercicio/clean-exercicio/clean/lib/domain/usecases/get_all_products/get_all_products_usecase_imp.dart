
import '../../entities/product_entity.dart';
import '../../repositories/get_all_products_repository.dart';

import 'get_all_products_usecase.dart';

class GetAllProductsUsecaseImp implements IGetAllProductsUsecase {
  final IGetAllProductsRepository _getAllProductsRepository;
  GetAllProductsUsecaseImp(this._getAllProductsRepository);
  
  @override
  List<ProductEntity> call() {
    List<ProductEntity> listCorrect = [];
    List<ProductEntity> listProducts = _getAllProductsRepository.call();

    for (ProductEntity product in listProducts) {
      if(product.verifyPriceValid() && product.verifyNameValid()) {
        listCorrect.add(product);
      }
    }
    return listCorrect;
  }
}