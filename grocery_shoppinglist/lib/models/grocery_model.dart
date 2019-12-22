

import 'package:flutter/widgets.dart';
import 'package:grocery_shoppinglist/database/database_dao.dart';
import 'package:grocery_shoppinglist/database/entity/grocery_list.dart';

class GroceryModel extends ChangeNotifier {

  List<GroceryEntity> _groceryList = List();

  List<GroceryEntity> get groceryList => this._groceryList;

  void add(GroceryEntity groceryList) {
    _groceryList.add(groceryList);
    notifyListeners();
  }

  void remove(GroceryEntity groceryEntity) {
    _groceryList.remove(groceryEntity);
    notifyListeners();
  }

  Future<List<GroceryEntity>> getGroceryList() async {
    _groceryList = await DatabaseDao().getAllGroceryList();
    return _groceryList;
  }

  
  Future<List<GroceryEntity>> getLocalList() async {
    return await DatabaseDao().getAllGroceryList();
  }

}