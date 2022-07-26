import '../../core/get_it.dart';

import '../controllers/product_controller.dart';
import 'package:flutter/material.dart';

import 'product_page_two.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  ProductController controller = getIt.get<ProductController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 150,
            child: ListView.builder(
              itemCount: controller.allProducts.length,
              itemBuilder: ((context, index) {
                return InkWell(
                  onTap: () {
                    controller.getProductById(controller.allProducts[index].id);
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
                                    controller.allProducts[index].name,
                                    style: const TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text(
                                    controller.allProducts[index].category,
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
            ),
          ),
          MaterialButton(
              color: Colors.white,
              child: const Text(
                "opaaaaaaaaaa",
                style: TextStyle(),
              ),
              onPressed: () {
                controller.getProductById(6);
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ProductPageTwo(),
                  ),
                );
              })
        ],
      ),
    );
  }
}
