
import '../../entities/cellphone_entity.dart';
import '../../repositories/cellphone/get_cellphone_by_brand_repository.dart';
import 'get_cellphone_by_brand_usecase.dart';

class GetCellphoneByBrandUsecaseImpl implements GetCellphoneByBrandUsecase {
  final GetCellphoneByBrandRepository _getCellphoneByBrandRepository;

  GetCellphoneByBrandUsecaseImpl(this._getCellphoneByBrandRepository);

  @override
  Future<List<CellPhoneEntity>> call(String brand) {
    return _getCellphoneByBrandRepository.call(brand);
  }
}