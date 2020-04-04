//
// Copyright (c) 2019 Razeware LLC
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
// distribute, sublicense, create a derivative work, and/or sell copies of the
// Software in any work that is designed, intended, or marketed for pedagogical or
// instructional purposes related to programming, coding, application development,
// or information technology.  Permission for such use, copying, modification,
// merger, publication, distribution, sublicensing, creation of derivative works,
// or sale is expressly withheld.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trilogies/models/faves.dart';
import 'package:trilogies/pages/faves_page.dart';
import 'package:trilogies/pages/films_page.dart';

import 'models/films.dart';

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  int _selectedIndex = 0;
  final _appBarTitles = [
    Text('Films'),
    Text('Faves'),
  ];
  var _appBarTitleText = Text('Films');

  final _pageOptions = [
    FilmsPage(),
    FavesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(builder: (context) => FilmsModel()),
        ChangeNotifierProxyProvider<FilmsModel, FavesModel>(
          update: (builder, films, previousFaves) => FavesModel(films, previousFaves),
        )
      ],
      child: MaterialApp(
        title: 'Trilogies',
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: Scaffold(
          appBar: AppBar(
            title: _appBarTitleText,
          ),
          body: _pageOptions[_selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: (int index) {
              setState(() {
                _selectedIndex = index;
                _appBarTitleText = _appBarTitles[index];
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.movie),
                title: Text('Films'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.star),
                title: Text('Faves'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
