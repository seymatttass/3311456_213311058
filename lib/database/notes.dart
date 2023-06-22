import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomePageState extends StatefulWidget {
  const HomePageState({Key? key}) : super(key: key);

  @override
  State<HomePageState> createState() => _HomePageStateState();
}

class _HomePageStateState extends State<HomePageState> {
  final _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    CollectionReference usersRef = _firestore.collection('users');

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'FİRESTORE',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: StreamBuilder<QuerySnapshot>(
          stream: usersRef.snapshots(),
          builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return Text('Veriler alınırken hata oluştu: ${snapshot.error}');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            }

            List<Widget> userWidgets = [];
            snapshot.data!.docs.forEach((DocumentSnapshot document) {
              Map<String, dynamic> data = document.data() as Map<String, dynamic>;
              String name = data['name'] ?? '';
              int age = data['age'] ?? 0;
              String email = data['email'] ?? '';

              userWidgets.add(
                ListTile(
                  title: Text('Name: $name'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Age: $age'),
                      Text('Email: $email'),
                    ],
                  ),
                ),
              );
            });

            return ListView(
              children: userWidgets,
            );
          },
        ),
      ),
    );
  }
}
