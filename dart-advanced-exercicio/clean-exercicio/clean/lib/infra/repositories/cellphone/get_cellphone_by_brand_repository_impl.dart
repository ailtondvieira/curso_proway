import '../../../domain/entities/cellphone_entity.dart';
import '../../../domain/repositories/cellphone/get_cellphone_by_brand_repository.dart';
import '../../datasources/cellphone/get_cellphone_by_brand_datasource.dart';

class GetCellphoneByBrandRepositoryImpl
    implements GetCellphoneByBrandRepository {
  final GetCellphoneByBrandDatasource _getCellphoneByBrandDatasource;

  GetCellphoneByBrandRepositoryImpl(
    this._getCellphoneByBrandDatasource,
  );

  @override
  Future<List<CellPhoneEntity>> call(String brand) {
    return _getCellphoneByBrandDatasource.call(brand);
  }
}
