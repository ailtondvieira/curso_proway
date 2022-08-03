import '../../domain/entities/cellphone_entity.dart';

import '../../domain/usecases/get_cellphone_by_brand/get_cellphone_by_brand_usecase_impl.dart';

class CellphoneController {
  final GetCellphoneByBrandUsecaseImpl? _getCellphoneByBrandUsecaseImpl;

  CellphoneController(this._getCellphoneByBrandUsecaseImpl);

  List<CellPhoneEntity> selectedCellphone = [];

  Future<void> getCellphoneByBrand(String brand) async {
    selectedCellphone = await _getCellphoneByBrandUsecaseImpl!.call(brand);
  }
}
