import 'package:grocery_shoppinglist/database/database_schema.dart';

class GroceryEntity {
  final int id;
  final String title;
  final String body;
  final int isFavorite;

  GroceryEntity({this.id, this.title, this.body, this.isFavorite});

  Map<String, dynamic> toMap() {
    return {
      '$GROCERY_COLUMN_ID': id,
      '$GROCERY_COLUMN_TITLE': title,
      '$GROCERY_COLUMN_BODY': body,
      '$GROCERY_COLUMN_FAV': isFavorite
    };
  }
}