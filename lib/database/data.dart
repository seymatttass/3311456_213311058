import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class NotesScreen extends StatefulWidget {
  @override
  _NotesScreenState createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  final String databaseName = 'myDatabase.db';
  final TextEditingController nameController = TextEditingController();
  List<Map<String, dynamic>> queryResults = [];

  @override
  void initState() {
    super.initState();
    _queryData();
  }
  
  Future<Database> _openDatabase() async {
    final String databasePath = await getDatabasesPath();
    final String path = join(databasePath, databaseName);

    return openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
          await db
              .execute('CREATE TABLE myTable (id INTEGER PRIMARY KEY, name TEXT)');
        });
  }

  Future<void> _addData() async {
    final Database database = await _openDatabase();
    final String name = nameController.text;

    await database.insert('myTable', {'name': name});
    _queryData();
  }

  Future<void> _queryData() async {
    final Database database = await _openDatabase();
    final List<Map<String, dynamic>> rows = await database.query('myTable');
    setState(() {
      queryResults = rows;
    });
  }

  Future<void> _deleteData(int id) async {
    final Database database = await _openDatabase();
    await database.delete('myTable', where: 'id = ?', whereArgs: [id]);
    _queryData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/notluk.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(26),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextField(
                  controller: nameController,
                  style: TextStyle(
                    color: Colors.deepPurple, // Yazı rengi deeppurple olarak güncellendi
                  ),
                  decoration: InputDecoration(
                    labelText: '    Tarif Ekle:',
                    labelStyle: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 25,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: ElevatedButton(
                  onPressed: _addData,
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple,
                  ),
                  child: Text('Tarifi Kaydet'),
                ),
              ),
              SizedBox(height: 40),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    'Kayıtlı Tariflerim:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: List.generate(queryResults.length, (index) {
                        final row = queryResults[index];
                        return ListTile(
                          title: Text(
                            'Tarif: ${row['name']}',
                            style: TextStyle(color: Colors.deepPurple),
                          ),
                          trailing: IconButton(
                            icon: Icon(Icons.delete,
                                color: Colors.deepPurple),
                            onPressed: () {
                              _deleteData(row['id']);
                            },
                          ),
                        );
                      }),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
