
import '../../entities/product_entity.dart';
import '../../repositories/get_product_by_id_repository.dart';
import 'get_product_by_id_usecase.dart';

class GetProductByIdUsecaseImp implements GetProductByIdUsecase{
  final GetProductByIdRepository _getProductByNameRepository;

  GetProductByIdUsecaseImp(this._getProductByNameRepository);

  @override
  ProductEntity? call(int id) {
    return _getProductByNameRepository.call(id);
  }

}