
import '../../entities/cellphone_entity.dart';

abstract class GetCellphoneByBrandRepository {
  Future<List<CellPhoneEntity>> call(String brand);
}