import 'package:flutter/material.dart';
import 'package:grocery_shoppinglist/database/entity/grocery_list.dart';
import 'package:grocery_shoppinglist/models/grocery_model.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final GroceryModel model = Provider.of<GroceryModel>(context);

    return Scaffold(
        appBar: AppBar(
          title: Text("Lista de compras"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            model.add(
              GroceryEntity(
                id: 1,
                title: 'Testing Title',
                body: 'description',
                isFavorite: 0
              )
            );
          },
          tooltip: 'Nova lista',
          child: Icon(Icons.add),
        ),
        body: Consumer<GroceryModel>(
          builder: (_, model, child) {
            return ListView.builder(
              itemCount: model.groceryList.length,
              itemBuilder: (_, index) {
                return Text(model.groceryList[index].title);
              },
            );
          },
        ));
  }
}
