import 'package:auto_size_text/auto_size_text.dart';
import 'package:clean/infra/dtos/products_dto.dart';
import 'package:clean/presenter/controllers/cellphone_controller.dart';
import 'package:clean/presenter/ui/product_page_three.dart';
import 'package:flutter/material.dart';

import '../../core/get_it.dart';
import '../controllers/product_controller.dart';

class ProductPageTwo extends StatefulWidget {
  const ProductPageTwo({
    Key? key,
  }) : super(key: key);

  @override
  State<ProductPageTwo> createState() => _ProductPageTwoState();
}

class _ProductPageTwoState extends State<ProductPageTwo> {
  ProductController controller = getIt.get<ProductController>();
  CellphoneController controllerCell = getIt.get<CellphoneController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () async {
                   await controllerCell.getCellphoneByBrand("Samsung");
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const ProductPageThree();
                      },
                    ),
                  );
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  ),
              ),
            ],
          ),
          const SizedBox(
            height: 630,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AutoSizeText(
                    controller.selectedProduct
                        .toString()
                        .replaceAll("ProductEntity", ""),
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.white
                      ),
                    minFontSize: 10,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
