import '../../../domain/entities/cellphone_entity.dart';

abstract class GetCellphoneByBrandDatasource {
  Future<List<CellPhoneEntity>> call(String brand);
}
