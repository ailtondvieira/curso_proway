
import '../../domain/entities/product_entity.dart';
import '../../domain/usecases/get_all_products_usecase_imp.dart';

class ProductController {
  final GetAllProductsUsecaseImp _getAllProductsUsecaseImp;
  ProductController(
    this._getAllProductsUsecaseImp,
  ) {
    getAllProducts();
  }

  late List<ProductEntity> allProducts;
  void getAllProducts() {
    allProducts = _getAllProductsUsecaseImp.call();
  }
}
