import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  DatabaseHelper._();
  static final DatabaseHelper instance = DatabaseHelper._();
  static Database? _database;

  Future<Database> get database async {
    _database ??= await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = await getDatabasesPath();
    String fileName = '$path/database.db';

    return await openDatabase(
      fileName,
      version: 1,
      onCreate: (Database db, int version) async {
        db.execute(
          'create table texts (id integer primary key autoincrement, title text)',
        );
      },
    );
  }

  Future<int> insertText(String text) async {
    Database db = await instance.database;
    return db.insert('texts', {'title': text});
  }

  Future<String> getText(int index) async {
    Database db = await instance.database;
    List<Map<String, dynamic>> response = await db.query('texts');
    if (response.isNotEmpty) {
      return response[index]['title'];
    } else {
      return "nada, patrão";
    }
  }
}

// class DatabaseHelper {
//   static DatabaseHelper? _instance;
//   DatabaseHelper._();
//   static Database? _database;

  // static DatabaseHelper get instance{
  //   _instance??=  DatabaseHelper._();
  //   return _instance!;
  //  }

//   Future get database async {
//  _database ??= await _initDatabase();
//      return _database!;
//   }

//   Future<Database> _initDatabase() async {
//     String path = await getDatabasesPath();
//     String fileName = '$path/database.db';

//     return await openDatabase(
//       fileName,
//       version: 1,
//       onCreate: (Database db, int version) async {
//         db.execute(
//           'create table texts (id integer primary key autoincrement, title text)',
//         );
//       },
//     );
//   }

// }
