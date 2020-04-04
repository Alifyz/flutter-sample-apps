import 'package:sqlite_example/database/database_contract.dart';

class NotesModel {
  final int id;
  final String title;
  final String body;
  
  NotesModel({this.id, this.title, this.body});

  Map<String, dynamic> toMap() {
    return {
      '$COLUMN_ID': id,
      '$COLUMN_TITLE': title,
      '$COLUMN_BODY': body
    };
  }
}