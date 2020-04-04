import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:retrofit_like/service/apiService.dart';

import 'homePage.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      builder: (_) => PostApiService.create(),
      dispose: (context, PostApiService service) => service.client.dispose(),
      child: MaterialApp(
        title: "Chopper HTTP Client",
        home: HomePage(),
      ),
    );
  }
}