import 'package:flutter/material.dart';

class NewFavor extends StatelessWidget {

  const NewFavor({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<String> _mockList = List<String>();
    _mockList.add("Alify");
    _mockList.add("Amanda");
    _mockList.add("Higor");
    _mockList.add("Joana");

    return Scaffold(
      appBar: AppBar(
        title: Text("New Favor"),
        leading: CloseButton(),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          DropdownButtonFormField(
            items: _mockList.map(
              (item) => DropdownMenuItem(
                child: Text(item),
              )
            ).toList(),
          )
        ],
      ),
    );
  }
}