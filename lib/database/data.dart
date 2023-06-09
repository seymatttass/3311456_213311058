import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';



class NotesScreen extends StatefulWidget {
  @override
  _NotesScreenState createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  final String databaseName = 'Database.db';
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

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/notluk.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(26),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 50),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Colors.deepPurple,
                        width: 2,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: TextField(
                        controller: nameController,
                        style: TextStyle(
                          color: Colors.deepPurple,
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
                  ),
                  SizedBox(height: 40),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton.icon(
                          onPressed: _addData,
                          style: ElevatedButton.styleFrom(
                            primary: Colors.deepPurple,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          icon: Icon(Icons.add),
                          label: Text('EKLE'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 150),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        '                            Tariflerim:',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
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
                              icon: Icon(Icons.delete_forever,
                                color: Colors.deepPurple,
                              ),
                              onPressed: () {
                                _deleteData(row['id']);
                              },
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


}
