import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:eating/screen/tarifler.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();



  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}





class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent, // Set background color to transparent
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/Tela inicial 3.jpeg'), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                CircleAvatar(
                  radius: 70.0,
                  backgroundColor: Colors.grey,
                  backgroundImage: AssetImage('images/Instagram hightlight icon.jpeg'),
                ),
                SizedBox(width: 10.0, height: 30.0),
                Text(
                  'Bütün tarifler bir tık uzağınızda',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 10.0, height: 30.0),
                Padding(
                  padding: EdgeInsets.only(left: 40.0),
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyRecipesPage(),
                        ),
                      );
                    },
                    title: Row(
                      children: <Widget>[
                        Icon(
                          Icons.restaurant_menu_outlined,
                          size: 50,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10.0),
                        Text(
                          'ÖZEL TARİFLERİM',
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Padding(
                  padding: EdgeInsets.only(left: 40.0),
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FoodPage(),
                        ),
                      );
                    },
                    title: Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          size: 50,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10.0),
                        Text(
                          'DEĞERLENDİRMELER',
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Padding(
                  padding: EdgeInsets.only(left: 40.0),
                  child: ListTile(
                    onTap: () {
                      openWebsite();
                    },
                    title: Row(
                      children: <Widget>[
                        Icon(
                          Icons.restaurant,
                          size: 40,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10.0),
                        Text(
                          'EN POPÜLER 40 YEMEK',
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.lock, color: Colors.deepPurple),
            label: 'Giriş Yap',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, color: Colors.deepPurple),
            label: 'Favoriler',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.data_array, color: Colors.deepPurple),
            label: 'Veriler',
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfilScreen()),
            );
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BegeniScreen()),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => databaseScreen()),
            );
          }
        },
      ),
    );
  }
}





class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('images/86f779a70c7f78ef4b785ebd5cb8fa54.jpg'),
          ),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 100),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.6),
                Colors.black.withOpacity(.3),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              YaziHareket(),
              SizedBox(
                height: 30.0,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 15),
                width: 200,
                child: const Text(
                  'Sağlığın ve damak tadın için en iyisini seç!',
                  style: TextStyle(color: Colors.white70, height: 1.5),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext) => const SecondScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  backgroundColor: Colors.brown,
                ),
                child: const Text('İlerle'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}





class YaziHareket extends StatefulWidget {

  @override
  _YaziHareketState createState() => _YaziHareketState();
}

class _YaziHareketState extends State<YaziHareket> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation <double> _animation;


  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(seconds: 1),vsync: this);
    _animation =
    CurvedAnimation(parent: _controller, curve: Curves.bounceInOut)
      ..addListener(() => this.setState(() {}))
      ..addStatusListener((durum) {
        debugPrint((durum).toString());
      });
    _controller.repeat();
  }  //parent neyin içinde çalışacağı curve de animasyon şekli nasıl bi hareket bekliyoruz.

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Tariflerin ve \nkeşfedeceklerin \nburada...',
        style: Theme.of(context).textTheme.headlineMedium?.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30.0 + _animation.value  * 5,
        ),
      ),
    );
  }
}





//FİREBASE GİRİŞ KONTROL

class ProfilScreen extends StatefulWidget {
  const ProfilScreen({Key? key}) : super(key: key);

  @override
  State<ProfilScreen> createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void loginUser() async {
    String email = _emailController.text.trim();
    String password = _passwordController.text;

    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      User? user = userCredential.user;
      if (user != null) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Başarılı"),
              content: Text("Giriş başarılı. Kullanıcı ID: ${user.uid}"),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    // Giriş başarılı olduğunda yapılması gereken işlemleri buraya ekleyebilirsiniz
                  },
                  child: Text("Tamam"),
                ),
              ],
            );
          },
        );
      }
    } catch (e) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Hata"),
            content: Text("Giriş yapılamadı. Hata: $e"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Tamam"),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      resizeToAvoidBottomInset: false,
      body: Form(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 80.0,
                  backgroundColor: Colors.white54,
                  backgroundImage: AssetImage('images/Contacts app icon.png'),
                ),
              ),
              SizedBox(height: 30.0),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  labelText: 'E-posta',
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10.0),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  labelText: 'Şifre',
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white54, // Arka plan rengini burada belirleyebiliriz
                    ),
                    child: Text(
                      'Üye ol',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UserRegistrationScreen(),
                        ),
                      );
                    },
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white54, // Arka plan rengini burada belirleyebiliriz
                    ),
                    child: Text(
                      'Giriş yap',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: loginUser,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}







class BegeniScreen extends StatelessWidget {
  const BegeniScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
        body: SafeArea(
          child: Stack(
            children: <Widget>[
          Positioned.fill(
          child: Image.asset(
            'images/kkk.png',
            fit: BoxFit.cover,
          ),
        ),
         Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Tarif1(),
                          ),
                        );
                      } ,
                      child: Container(
                        color: Colors.white,
                        constraints: BoxConstraints.expand(),
                        child: Image.asset(
                            'images/0ee3e4360f27beb3e0c8cd5f7a907347.jpg',
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Tarif2(),
                          ),
                        );
                      },
                      child: Container(
                        constraints: BoxConstraints.expand(),
                        color: Colors.white,
                        child: Image.asset(
                            'images/2c5778c05a723ee81716408649282356.jpg',
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 100,
              child: Divider(height: 20, color: Colors.greenAccent),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Tarif3(),
                        ),
                      );},
                      child: Container(
                        constraints: BoxConstraints.expand(),
                        color: Colors.white,
                        child: Image.asset(
                            'images/6a4465318f3cf72fa0708d7dc31d05b1.jpg',
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Tarif4(),
                          ),
                        );
                      },
                      child: Container(
                        constraints: BoxConstraints.expand(),
                        color: Colors.white,
                        child: Image.asset(
                            'images/30da50228346d0976ff6f87e7eb5db29.jpg',
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 100,
              child: Divider(height: 20, color: Colors.greenAccent),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Tarif5(),
                          ),
                        );
                      },
                      child: Container(
                        constraints: BoxConstraints.expand(),
                        color: Colors.white,
                        child: Image.asset(
                            'images/a99b71b3ab0b260f52483c861f7cea28.jpg',
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Tarif6(),
                          ),
                        );
                      },
                      child: Container(
                        constraints: BoxConstraints.expand(),
                        color: Colors.white,
                        child: Image.asset(
                            'images/8a341af0d2a37b0836be4e75b938d715.jpg',
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 100,
              child: Divider(height: 20, color: Colors.greenAccent),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Tarif7(),
                          ),
                        );
                      },
                      child: Container(
                        constraints: BoxConstraints.expand(),
                        color: Colors.white,
                        child: Image.asset(
                            'images/bde2d4fad603ab5610fb5ca8694778d1.jpg',
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Tarif8(),
                          ),
                        );
                      },
                      child: Container(
                        constraints: BoxConstraints.expand(),
                        color: Colors.white,
                        child: Image.asset(
                            'images/d36b071f479f174a38cc4d1e4b75c098.jpg',
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 100,
              child: Divider(height: 20, color: Colors.greenAccent),
            ),
          ],
        ),
      ],
      ),
    ),
    );
  }
}








//WEBİSTE EKLEME

void openWebsite() async {
  var url = 'https://www.nefisyemektarifleri.com/liste/yilin-populer-ana-yemek-tarifleri/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'İnternet sitesi açılamadı: $url';
  }
}







//DATABASE EKRANI SAYFASI SQLİTE

class databaseScreen extends StatelessWidget {
  const databaseScreen({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 40.0),
                child: ListTile(
                  onTap: () async {
                    await DatabaseHelper.open();

                    // Veri ekleme
                    await DatabaseHelper.insertData('mehmet', 22);
                    await DatabaseHelper.insertData('şeyma', 21);

                    // Verileri getirme
                    List<Map<String, dynamic>> data =
                    await DatabaseHelper.getAllData();

                    // Verileri çıktı olarak gösterme
                    print(data);
                  },
                  title: Row(
                    children: <Widget>[
                      Icon(
                        Icons.add,
                        size: 50,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        'Yeni Veri Ekle',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40.0),
                child: ListTile(
                  onTap: () async {
                    await DatabaseHelper.open();

                    // İlk veriyi sil
                    await DatabaseHelper.deleteData(1);
                    await DatabaseHelper.deleteData(2);


                    // Verileri getirme
                    List<Map<String, dynamic>> data =
                    await DatabaseHelper.getAllData();

                    // Verileri çıktı olarak gösterme
                    print(data);
                  },
                  title: Row(
                    children: <Widget>[
                      Icon(
                        Icons.delete,
                        size: 50,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        'Veri Sil',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    ],
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












