import 'package:core/app/micro_core_utils.dart';
import 'package:core/app/microapp.dart';

import 'pages/login_page.dart';

class MicroAppLoginResolver implements Microapp {
  @override
  String get microAppName => 'micro_app_login';

  @override
  Map<String, WidgetBuilderArgs> get routes {
    return {
      '/login': (context, args) => const LoginPage(),
    };
  }
}
