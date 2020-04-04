import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqlite_example/database/database_contract.dart';
import 'package:sqlite_example/model/notes_model.dart';

class DatabaseHelper {
  
  Future<Database> setupDatabase() async {
    return openDatabase(join(await getDatabasesPath(), 'notes.db'), version: 1,
        onCreate: (db, version) {
      return db.execute('''CREATE TABLE $DATABASE_NAME (
            $COLUMN_ID INTEGER PRIMARY KEY,
            $COLUMN_TITLE TEXT, 
            $COLUMN_BODY TEXT )''');
    });
  }

  Future<void> insertNote(NotesModel note) async {
    final Database db = await setupDatabase();
    await db.insert(DATABASE_NAME, note.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<List<NotesModel>> queryAllNotes() async {
    final Database db = await setupDatabase();
    final List<Map<String, dynamic>> notesMap = await db.query('$DATABASE_NAME');

    return List.generate(notesMap.length, (i) {
      return NotesModel(
        id: notesMap[i]['$COLUMN_ID'],
        body: notesMap[i]['$COLUMN_BODY'],
        title: notesMap[i]['$COLUMN_TITLE']
      );
    });
  }
}
