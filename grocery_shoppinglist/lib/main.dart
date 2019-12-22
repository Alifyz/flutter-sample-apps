import 'package:flutter/material.dart';
import 'package:grocery_shoppinglist/models/grocery_model.dart';
import 'package:grocery_shoppinglist/pages/add_newlist/add_grocerylist.dart';
import 'package:grocery_shoppinglist/pages/home/home_screen.dart';
import 'package:grocery_shoppinglist/pages/list_details/list_details.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => GroceryModel()),
        FutureProvider(create: (_) => GroceryModel().getGroceryList())
      ],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => HomeScreen(),
          '/add-grocery': (context) => AddGroceryScreen(),
          '/add-items': (context) => ListDetailsScreen()
        },
        title: 'GroceryListing App',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
      ), 
    );
  }
}
