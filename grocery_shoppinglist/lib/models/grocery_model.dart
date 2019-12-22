

import 'package:flutter/widgets.dart';
import 'package:grocery_shoppinglist/database/database_dao.dart';
import 'package:grocery_shoppinglist/database/entity/grocery_list.dart';

class GroceryModel extends ChangeNotifier {

  List<GroceryEntity> _groceryList = List();

  List<GroceryEntity> get getGroceryList => this._groceryList;

  void add(GroceryEntity groceryList) {
    DatabaseDao().addGroceryList(groceryList);
    notifyListeners();
  }

  void remove(GroceryEntity groceryEntity) {
    _groceryList.remove(groceryEntity);
    notifyListeners();
  }

  Future<List<GroceryEntity>> getDatabaseList() async {
    _groceryList = await DatabaseDao().getAllGroceryList();
    return DatabaseDao().getAllGroceryList();
  }

}