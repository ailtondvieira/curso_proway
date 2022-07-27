import '../controllers/cellphone_controller.dart';
import 'product_page_two.dart';
import 'package:flutter/material.dart';

import '../../core/get_it.dart';

class ProductPageThree extends StatefulWidget {
  const ProductPageThree({Key? key}) : super(key: key);

  @override
  State<ProductPageThree> createState() => _ProductPageThreeState();
}

class _ProductPageThreeState extends State<ProductPageThree> {
  CellphoneController controllerCell = getIt.get<CellphoneController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: FutureBuilder<ListView>(
          builder:(context, snapshot) {
          return ListView.builder(
                itemCount: controllerCell.selectedCellphone.length,
                itemBuilder: ((context, index) {
                  return InkWell(
                    onTap: () {
                      controllerCell.getCellphoneByBrand(controllerCell.selectedCellphone[index].brand);
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: ((context) {
                            return const ProductPageTwo();
                          }),
                        ),
                      );
                    },
                    child: Card(
                      color: Colors.white,
                      shadowColor: Colors.grey,
                      elevation: 8,
                      margin: const EdgeInsets.all(10),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      controllerCell.selectedCellphone[index].brand,
                                      style: const TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    Text(
                                      controllerCell.selectedCellphone[index].price.toString(),
                                      style: const TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              );
          }
        ),
      ),
    );
  }
}