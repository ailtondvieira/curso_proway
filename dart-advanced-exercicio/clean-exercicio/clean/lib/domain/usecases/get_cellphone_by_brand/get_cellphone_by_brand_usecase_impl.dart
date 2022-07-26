
import 'package:clean/domain/entities/cellphone_entity.dart';
import 'package:clean/domain/repositories/cellphone/get_cellphone_by_brand_repository.dart';
import 'package:clean/domain/usecases/get_cellphone_by_brand/get_cellphone_by_brand_usecase.dart';

class GetCellphoneByBrandUsecaseImpl implements GetCellphoneByBrandUsecase {
  final GetCellphoneByBrandRepository _getCellphoneByBrandRepository;

  GetCellphoneByBrandUsecaseImpl(this._getCellphoneByBrandRepository);

  @override
  Future<List<CellPhoneEntity>> call(String brand) {
    return _getCellphoneByBrandRepository.call(brand);
  }
}