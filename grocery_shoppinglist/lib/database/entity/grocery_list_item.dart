import 'package:grocery_shoppinglist/database/database_schema.dart';

class ListItemEntity {
  final int id;
  final int parentId;
  final String title;
  final int quantity;
  final String quantityType;
  
  ListItemEntity({this.id, this.parentId, this.title, this.quantity, this.quantityType});

  Map<String, dynamic> toMap() {
    return {
      '$GROCERY_LIST_COLUMN_ID': id,
      '$GROCERY_LIST_COLUMN_PARENTID': parentId,
      '$GROCERY_LIST_COLUMN_TITLE': title,
      '$GROCERY_LIST_COLUMN_QTD': quantity,
      '$GROCERY_LIST_COLUMN_QTD_TYPE': quantityType
    };
  }
}