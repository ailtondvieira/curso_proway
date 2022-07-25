import 'package:auto_size_text/auto_size_text.dart';

import '../../domain/usecases/get_all_products_usecase_imp.dart';
import '../../infra/datasources/local/get_all_products_local_datasource.dart';
import '../../infra/repositories/get_all_products_repository_imp.dart';
import '../controllers/product_controller.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  ProductController controller = ProductController(GetAllProductsUsecaseImp(
      GetAllProductsRepositoryImp(GetAllProductsLocalDatasource())));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.grey,
                child: AutoSizeText(
                  controller.allProducts.toString().replaceAll("[", "").replaceAll("]", ""),
                  style: const TextStyle(color: Colors.black),
                  minFontSize: 20,
                  stepGranularity: 10,
                  maxLines: 7,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
