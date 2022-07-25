
import '../../domain/entities/product_entity.dart';
import '../../domain/usecases/get_all_products_usecase.dart';

class ProductController {
  final IGetAllProductsUsecase _iGetAllProductsUsecase;
  ProductController(
    this._iGetAllProductsUsecase,
  ) {
    getAllProducts();
  }

  late List<ProductEntity> allProducts;
  void getAllProducts() {
    allProducts = _iGetAllProductsUsecase.call();
  }
}
