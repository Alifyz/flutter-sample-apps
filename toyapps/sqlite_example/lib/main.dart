import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sqlite_example/database/database_api.dart';

import 'model/notes_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<List<NotesModel>> _notes = DatabaseHelper().queryAllNotes();

  @override
  void initState() {
    super.initState();
    DatabaseHelper().insertNote(
        NotesModel(id: 1, title: 'Inicial Note', body: 'Dummy note'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SQLite Example',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("SQLite Example"),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            DatabaseHelper().insertNote(NotesModel(
                id: Random().nextInt(1000),
                title: 'Random Note',
                body: 'New random note added'));
            setState(() {
              _notes = DatabaseHelper().queryAllNotes();
            });
          },
        ),
        body: FutureBuilder(
          future: _notes,
          builder: (_, snapshot) {
            if (snapshot.hasData) {
              return buildNotesList(snapshot.data);
            } else if (snapshot.hasError) {
              return buildErrorMessage();
            } else {
              return buildLoadingIndicator();
            }
          },
        ),
      ),
    );
  }

  Widget buildNotesList(List<NotesModel> notes) {
    return ListView.builder(
      itemCount: notes.length,
      itemBuilder: (_, index) {
        return ListTile(
          title: Text(notes[index].title),
          subtitle: Text(notes[index].body),
        );
      },
    );
  }

  Widget buildLoadingIndicator() {
    return Center(child: CircularProgressIndicator());
  }

  Widget buildErrorMessage() {
    return Center(
      child: Text("An unknown error has occur"),
    );
  }
}
