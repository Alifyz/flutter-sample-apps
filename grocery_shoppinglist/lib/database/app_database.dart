
import 'package:moor_flutter/moor_flutter.dart';

part 'app_database.g.dart';

@DataClassName("Grocery")
class Grocery extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().withLength(min: 6, max: 32)();
  TextColumn get description => text()();
}

@UseMoor(tables: [Grocery]) 
class AppDatabase extends _$AppDatabase {

  AppDatabase() : super(FlutterQueryExecutor.inDatabaseFolder(path: 'db.sqlite'))

  @override
  int get schemaVersion => 1;
  
}