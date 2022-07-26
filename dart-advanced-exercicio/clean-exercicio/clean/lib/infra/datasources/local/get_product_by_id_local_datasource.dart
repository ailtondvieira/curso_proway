import '../../../domain/entities/product_entity.dart';
import '../get_product_by_id_datasource.dart';

import 'get_all_products_local_datasource.dart';

class GetProductByIdLocalDatasource implements GetProductByIdDatasource {
  @override
  ProductEntity? call(int id) {
    List<ProductEntity> lista = GetAllProductsLocalDatasource().call();

    ProductEntity? prosel;

    for (ProductEntity product in lista) {
      if (product.id == id) {
        prosel = product;
      }
    }
    return prosel;
  }
}
