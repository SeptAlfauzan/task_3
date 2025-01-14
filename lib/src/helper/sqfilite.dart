import 'package:sqflite/sqflite.dart';
import 'package:task_3/src/constanta.dart';

class SQLiteHelper {
  static final SQLiteHelper _instance = SQLiteHelper._internal();
  static Database? _database;

  factory SQLiteHelper() {
    return _instance;
  }

  SQLiteHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    const createTableQuery = """
        CREATE TABLE tasks (
        id INTEGER PRIMARY KEY AUTOINCREMENT, 
        detail TEXT NOT NULL, 
        is_finished BOOLEAN DEFAULT 0,
        due_date TEXT,
        created_at TEXT DEFAULT CURRENT_TIMESTAMP
        )
    """;
    return await openDatabase(databasePath, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute(createTableQuery);
    });
  }
}
