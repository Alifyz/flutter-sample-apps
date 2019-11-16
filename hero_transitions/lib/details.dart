import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Details Screen"),
        ),
        body: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FittedBox(
              fit: BoxFit.fill,
              child: Hero(
                tag: "profile",
                child: Image.network(
                  "https://i.pravatar.cc/300",
                  width: MediaQuery.of(context).size.width,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
