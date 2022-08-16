import 'package:core/app/micro_core_utils.dart';

abstract class Microapp {
  String get microAppName;

  Map<String, WidgetBuilderArgs> get routes;
}
