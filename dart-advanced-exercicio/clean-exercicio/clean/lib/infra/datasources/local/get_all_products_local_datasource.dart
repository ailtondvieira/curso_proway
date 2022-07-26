import '../../../domain/entities/product_entity.dart';
import '../get_all_products_datasource.dart';

class GetAllProductsLocalDatasource implements IGetAllProductsDatasource {
  @override
  List<ProductEntity> call() {
    return [
      ProductEntity(
        id: 0,
        name: "Potato",
        price: 20,
        qtd: 2,
        brand: "Comunism",
        category: "green food",
      ),
      ProductEntity(
        id: 1,
        name: "Car",
        price: 200000,
        qtd: 3,
        brand: "BMW",
        category: "Cars",
      ),
      ProductEntity(
        id: 2,
        name: "Borracha",
        price: 20,
        qtd: 10,
        brand: 'usina',
        category: "latex",
      ),
      ProductEntity(
        id: 3,
        name: "Borra",
        price: 20,
        qtd: 10,
        brand: 'usi',
        category: "lat",
      ),
      ProductEntity(
        id: 4,
        name: "racha",
        price: 20,
        qtd: 10,
        brand: 'na',
        category: "tex",
      ),
      ProductEntity(
        id: 10,
        name: "Bocha",
        price: 20,
        qtd: 10,
        brand: 'una',
        category: "lax",
      ),
    ];
  }
}
