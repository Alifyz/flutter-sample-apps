import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'database_schema.dart';

class DatabaseHelper {
  //Private Constructor
  DatabaseHelper._();

  //Database Instance - Singleton
  static Database _database;

  static Future<Database> getInstance() async {
    return _database ??= await _initDatabase();
  }

  static Future<Database> _initDatabase() async {
    _database = await openDatabase(join(await getDatabasesPath(), "grocery.db"),
        version: 1, onCreate: (db, version) {
      return _createTables(db);
    });

    return _database;
  }

  static Future<void> _createTables(Database db) {
    db.execute('''
          CREATE TABLE $TABLE_GROCERY(
            $GROCERY_COLUMN_ID INTEGER PRIMARY KEY,
            $GROCERY_COLUMN_TITLE TEXT,
            $GROCERY_COLUMN_BODY TEXT,
            $GROCERY_COLUMN_FAV INTEGER
          );
          ''');
    db.execute('''
          CREATE TABLE $TABLE_GROCERY_LIST(
            $GROCERY_LIST_COLUMN_ID INTEGER PRIMARY KEY,
            $GROCERY_LIST_COLUMN_TITLE TEXT,
            $GROCERY_LIST_COLUMN_QTD REAL,
            $GROCERY_LIST_COLUMN_QTD_TYPE TEXT,
            $GROCERY_LIST_COLUMN_PARENTID INTEGER
          );
          ''');
  }
}
