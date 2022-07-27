
import '../../../../domain/entities/cellphone_entity.dart';
import '../../../../domain/entities/product_entity.dart';
import '../../cellphone/get_cellphone_by_brand_datasource.dart';
import '../get_all_products_local_datasource.dart';

class GetCellphoneByBrandLocalDatasource implements GetCellphoneByBrandDatasource{
  @override
  Future<List<CellPhoneEntity>> call(String brand) async {

    List<CellPhoneEntity>? cellsel = [];
    List<CellPhoneEntity> listCell = [
      CellPhoneEntity(id: 0, price: 2000, qtd: 2, brand: "Samsung"),
      CellPhoneEntity(id: 5, price: 2200, qtd: 2, brand: "Samsung"),
      CellPhoneEntity(id: 1, price: 4000, qtd: 3, brand: "IPhone"),
      CellPhoneEntity(id: 2, price: 2500, qtd: 10, brand: "Xiaomi"),
      CellPhoneEntity(id: 3, price: 1500, qtd: 8, brand: "Nokia"),
      CellPhoneEntity(id: 4, price: 3000, qtd: 1, brand: "Microsoft"),
    ];
    for(CellPhoneEntity cell in listCell) {
      await Future.delayed(const Duration(seconds: 1));
      if (cell.brand == brand){
        cellsel.add(cell);
      }
    }
    return cellsel;
  }
  
}