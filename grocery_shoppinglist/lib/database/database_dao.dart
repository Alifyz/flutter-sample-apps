

import 'package:grocery_shoppinglist/database/database_helper.dart';
import 'package:grocery_shoppinglist/database/database_schema.dart';
import 'package:grocery_shoppinglist/database/entity/grocery_list.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseDao {
  
  Future<void> addGroceryList(GroceryEntity groceryList) async {
    final Database db = await DatabaseHelper.getInstance();
    await db.insert('$TABLE_GROCERY', groceryList.toMap(), conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<List<GroceryEntity>> getAllGroceryList() async {
    final Database db = await DatabaseHelper.getInstance();
    final List<Map<String, dynamic>> rawData = await db.query('$TABLE_GROCERY');

    return List.generate(rawData.length, (index) {
      return GroceryEntity(
        id: rawData[index]['$GROCERY_COLUMN_ID'],
        title: rawData[index]['$GROCERY_COLUMN_TITLE'],
        body: rawData[index]['$GROCERY_COLUMN_BODY'],
        isFavorite: rawData[index]['$GROCERY_COLUMN_FAV']
      );
    });
  }

}