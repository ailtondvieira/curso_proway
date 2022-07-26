import '../../domain/entities/product_entity.dart';
import '../../domain/usecases/get_all_products/get_all_products_usecase_imp.dart';
import '../../domain/usecases/get_product_by_id/get_product_by_id_usecase_imp.dart';

class ProductController {
  final GetAllProductsUsecaseImp _getAllProductsUsecaseImp;
  final GetProductByIdUsecaseImp? _getProductByIdUsecaseImp;

  ProductController(
    this._getAllProductsUsecaseImp,
    this._getProductByIdUsecaseImp,
  ) {
    getAllProducts();
  }

  late ProductEntity? selectedProduct;
  late List<ProductEntity> allProducts;
  
  void getAllProducts() {
    allProducts = _getAllProductsUsecaseImp.call();
  }

  void getProductById(int id) {
    if (_getProductByIdUsecaseImp!.call(id) == null) {
      throw CustomException("Este produto não existe");
    } else {
      selectedProduct = _getProductByIdUsecaseImp!.call(id);
    }
  }
}

class CustomException implements Exception {
  String cause;
  CustomException(this.cause);

  @override
  String toString() =>
      'Uma exceção customizada foi lançada. A causa foi: $cause.';
}
