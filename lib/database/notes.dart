import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';





//SQLİTE VERİTABANI İŞLEMLERİ

void main() async {
  final String databaseName = 'Database.db';
  final String databasePath = await getDatabasesPath();
  final String path = join(databasePath, databaseName);

  final Database database = await openDatabase(path, version: 1,
      onCreate: (Database db, int version) async {
        await db.execute(
            'CREATE TABLE myTable (id INTEGER PRIMARY KEY, name TEXT, content  TEXT)');
      });

  // Veri ekleme
  await database.insert('myTable', {'name': 'Başlık ', 'content': 'Not içeriği '});

  // Veri güncelleme
  await database.update('myTable', {'content': 'Yeni not içeriği'},
      where: 'name = ?', whereArgs: ['Başlık ']);

  // Tüm verileri sorgulama
  final List<Map<String, dynamic>> rows = await database.query('myTable');

  // Veri silme
  await database.delete('myTable', where: 'name = ?', whereArgs: ['Başlık ']);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SQLite Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('SQLite Example'),
        ),
        body: Center(
          child: Text('SQLite operations performed successfully!'),
        ),
      ),
    );
  }
}
