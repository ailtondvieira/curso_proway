import 'package:intl/intl.dart';

String formatDate(String date) {
  DateTime? dateRelease = DateTime.tryParse(date);

  // if (dateRelease != null) {
  //   return DateFormat.yMMMd('pt_BR').format(dateRelease);
  // } else {
  //   return 'Data desconhecida';
  // }
  return dateRelease != null ? DateFormat.yMMMd('pt_BR').format(dateRelease) : 'Data desconhecida';
}

// String formtDate(String date) {
//   DateTime? dateRelease = DateTime.tryParse(date);
//   String dataFinal;

//   // if (dateRelease != null) {
//   //   return DateFormat.yMMMd('pt_BR').format(dateRelease);
//   // } else {
//   //   return 'Data desconhecida';
//   // }
// }
