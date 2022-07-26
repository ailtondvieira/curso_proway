import 'package:clean/infra/datasources/local/cellphone/get_cellphone_by_brand_local_datasource.dart';
import 'package:clean/infra/repositories/cellphone/get_cellphone_by_brand_repository_impl.dart';
import 'package:clean/presenter/controllers/cellphone_controller.dart';

import '../domain/repositories/cellphone/get_cellphone_by_brand_repository.dart';
import '../domain/usecases/get_cellphone_by_brand/get_cellphone_by_brand_usecase_impl.dart';
import '../domain/usecases/get_product_by_id/get_product_by_id_usecase_imp.dart';
import 'package:get_it/get_it.dart';

import '../domain/usecases/get_all_products/get_all_products_usecase_imp.dart';
import '../infra/datasources/cellphone/get_cellphone_by_brand_datasource.dart';
import '../infra/datasources/local/get_all_products_local_datasource.dart';
import '../infra/datasources/local/get_product_by_id_local_datasource.dart';
import '../infra/repositories/get_all_products_repository_imp.dart';
import '../infra/repositories/get_product_by_id_repository_imp.dart';
import '../presenter/controllers/product_controller.dart';

final getIt = GetIt.instance;

void setupDependencies() {
  getIt.registerSingleton<GetAllProductsLocalDatasource>(
    GetAllProductsLocalDatasource(),
  );
  getIt.registerSingleton<GetProductByIdLocalDatasource>(
    GetProductByIdLocalDatasource(),
  );

  getIt.registerSingleton<GetAllProductsRepositoryImp>(
    GetAllProductsRepositoryImp(
      getIt.get<GetAllProductsLocalDatasource>(),
    ),
  );

  getIt.registerSingleton<GetProductByIdRepositoryImp>(
    GetProductByIdRepositoryImp(
      getIt.get<GetProductByIdLocalDatasource>(),
    ),
  );

  getIt.registerSingleton<GetAllProductsUsecaseImp>(
    GetAllProductsUsecaseImp(
      getIt.get<GetAllProductsRepositoryImp>(),
    ),
  );
  getIt.registerSingleton<GetProductByIdUsecaseImp>(
    GetProductByIdUsecaseImp(
      getIt.get<GetProductByIdRepositoryImp>(),
    ),
  );

  getIt.registerSingleton<ProductController>(
    ProductController(getIt.get<GetAllProductsUsecaseImp>(),
        getIt.get<GetProductByIdUsecaseImp>()),
  );

  getIt.registerSingleton<GetCellphoneByBrandLocalDatasource>(
    GetCellphoneByBrandLocalDatasource(),
  );

  getIt.registerSingleton<GetCellphoneByBrandRepositoryImpl>(
    GetCellphoneByBrandRepositoryImpl(
      getIt.get<GetCellphoneByBrandLocalDatasource>(),
    ),
  );

  getIt.registerSingleton<GetCellphoneByBrandUsecaseImpl>(
    GetCellphoneByBrandUsecaseImpl(
      getIt.get<GetCellphoneByBrandRepositoryImpl>(),
    ),
  );
  
  getIt.registerSingleton<CellphoneController>(
    CellphoneController(
      getIt.get<GetCellphoneByBrandUsecaseImpl>(),
    ),
  );
}
