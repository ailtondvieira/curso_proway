import 'package:core/app/micro_core_utils.dart';
import 'package:core/app/microapp.dart';
import 'package:products/app/pages/products_page.dart';

class MicroAppProductsResolver implements Microapp {
  @override
  String get microAppName => "micro_app_products";

  @override
  Map<String, WidgetBuilderArgs> get routes {
    return {
      '/products': (context, args) => const ProductsPage(),
    };
  }
}
