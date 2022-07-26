
import '../../domain/entities/product_entity.dart';
import '../datasources/local/get_product_by_id_local_datasource.dart';

import '../../domain/repositories/get_product_by_id_repository.dart';

class GetProductByIdRepositoryImp implements GetProductByIdRepository{
  final GetProductByIdLocalDatasource _getProductByIdLocalDatasource;

  GetProductByIdRepositoryImp(this._getProductByIdLocalDatasource);

  @override
  ProductEntity? call(int id) {
    return _getProductByIdLocalDatasource.call(id);
  }
}