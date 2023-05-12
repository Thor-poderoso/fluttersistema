/* import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();

  factory DatabaseHelper() => _instance;

  static Database? _database;

  Future<Database?> get database async {
    if (_database != null) return _database;

    _database = await initializeDatabase();
    return _database;
  }

  DatabaseHelper._internal();

  Future<Database> initializeDatabase() async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, 'dashboard_files.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        // Aqui você pode criar as tabelas no banco de dados
        await db.execute(
          'CREATE TABLE files (id INTEGER PRIMARY KEY, name TEXT)',
        );
        await db.execute(
          'CREATE TABLE logins (id INTEGER PRIMARY KEY, username TEXT, password TEXT)',
        );
      },
      onUpgrade: (db, oldVersion, newVersion) async {
        // Aqui você pode atualizar as tabelas no banco de dados, caso necessário
      },
    );
  }

  Future<void> insertLogin(String username, String password) async {
    final db = await database;
    await db!.insert(
      'logins',
      {'username': username, 'password': password},
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<bool> checkCredentials(String username, String password) async {
    final db = await database;
    final result = await db!.query(
      'logins',
      where: 'username = ? AND password = ?',
      whereArgs: [username, password],
    );
    return result.isNotEmpty;
  }
}
 */

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();

  factory DatabaseHelper() => _instance;

  static Database? _database;

  Future<Database?> get database async {
    if (_database != null) return _database;

    _database = await initializeDatabase();
    return _database;
  }

  DatabaseHelper._internal();

  Future<Database> initializeDatabase() async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, 'dashboard_files.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        // Aqui você pode criar as tabelas no banco de dados
        await db.execute(
          'CREATE TABLE files (id INTEGER PRIMARY KEY, name TEXT)',
        );
        await db.execute(
          'CREATE TABLE logins (id INTEGER PRIMARY KEY, username TEXT, password TEXT)',
        );
      },
      onUpgrade: (db, oldVersion, newVersion) async {
        // Aqui você pode atualizar as tabelas no banco de dados, caso necessário
      },
    );
  }

  Future<void> insertLogin(String username, String password) async {
    final db = await database;
    await db!.insert(
      'logins',
      {'username': username, 'password': password},
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<bool> checkCredentials(String username, String password) async {
    final db = await database;
    final result = await db!.query(
      'logins',
      where: 'username = ? AND password = ?',
      whereArgs: [username, password],
    );
    return result.isNotEmpty;
  }
}

void main() async {
  final dbHelper = DatabaseHelper();

  // Inserir um login com nome "thiago" e senha "1234"
  await dbHelper.insertLogin('thiago', '1234');

  print('Login inserido com sucesso!');
}



