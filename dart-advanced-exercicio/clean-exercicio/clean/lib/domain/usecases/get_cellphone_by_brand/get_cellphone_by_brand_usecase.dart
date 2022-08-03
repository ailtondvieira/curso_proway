import '../../entities/cellphone_entity.dart';

abstract class GetCellphoneByBrandUsecase {
  Future<List<CellPhoneEntity>> call(String brand);
}
