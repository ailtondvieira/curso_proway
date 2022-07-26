
import '../../domain/entities/product_entity.dart';
import '../../../domain/repositories/get_all_products_repository.dart';
import '../datasources/get_all_products_datasource.dart';
import '../datasources/local/get_all_products_local_datasource.dart';

class GetAllProductsRepositoryImp implements IGetAllProductsRepository{
  final IGetAllProductsDatasource _datasource;
  GetAllProductsRepositoryImp(this._datasource);

  @override
  List<ProductEntity> call() {
    return _datasource.call();
  }
}