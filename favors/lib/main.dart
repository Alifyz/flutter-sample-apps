import 'package:flutter/material.dart';
import 'favors_model.dart';
import 'favors_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final List<Favor> acceptedFavors = _buildAcceptedFavors();

    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: FavorsPage(
          acceptedFavors: acceptedFavors,
          refusedFavors: acceptedFavors,
          completeFavors: acceptedFavors,
          pendingFavors: acceptedFavors,
        ));
  }

  List<Favor> _buildAcceptedFavors() {
    final tempList = List<Favor>();
    tempList.add(Favor.mock("2019-10-10", true, false, false, "Jhon Doe"));
    tempList.add(Favor.mock("2019-11-10", true, false, false, "Maria"));
    tempList.add(Favor.mock("2019-12-10", true, false, false, "Wesley"));
    tempList.add(Favor.mock("2019-13-10", true, false, false, "Amanda"));
    return tempList;
  }
}
