
import '../../../domain/entities/product_entity.dart';
import '../get_all_products_datasource.dart';

class GetAllProductsLocalDatasource implements IGetAllProductsDatasource {
  
  @override
  List<ProductEntity> call() {
    return [ProductEntity(name: "Potatoe", price: 20, qtd: 2, brand: "Comunism", category: "green food"),
    ProductEntity(name: "Car", price: 200000, qtd: 3, brand: "BMW", category: "Cars")];
  }
}