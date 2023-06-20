import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:eating/screen/tarifler.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/foundation.dart';
import 'package:eating/database/data.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();



  if(kIsWeb){
    await Firebase.initializeApp(
      options: FirebaseOptions(apiKey: "AIzaSyCEpSck_WphieFGa1qK7MYTuAmKOarfMss",
          appId: "1:596733719892:web:533505856d1ae00d9a04c1",
          messagingSenderId: "596733719892",
          projectId: "eating-1047d",
          storageBucket: "eating-1047d.appspot.com",
    )
    );
  }else{
    await Firebase.initializeApp(

    );
    }



  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}





class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
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
                    onLongPress: () {
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
            icon: Icon(Icons.restaurant_menu_outlined, color: Colors.deepPurple),
            label: 'Özel Tarifler',
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
              MaterialPageRoute(builder: (context) => NotesScreen()),
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
            image: AssetImage('images/giriş.jpeg'),
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
                  backgroundColor: Colors.deepPurple,
                ),
                child: const Text('Hoş geldiniz'),
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
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/1ed0ef87-f73a-4c45-8114-980a58b60c52.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Form(
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
                    filled: true, // Arka planı doldur
                    fillColor: Colors.white24, // Arka plan rengini belirle
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
                    filled: true, // Arka planı doldur
                    fillColor: Colors.white24, // Arka plan rengini belirle
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
                        backgroundColor: Colors.white24,
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
                        backgroundColor: Colors.white24,
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
                'images/83880f26-12c1-46d1-bc8a-f26acc544f44.jpeg',
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
                          },
                          child: Container(
                            color: Colors.white24,
                            constraints: BoxConstraints.expand(),
                            child: Center(
                              child: Text(
                                'Kreamlı Mantarlı Makarna',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepPurple,
                                ),
                                textAlign: TextAlign.center, // Metni ortalar
                              ),
                            ),
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
                            color: Colors.white24,
                            child: Center(
                              child: Text(
                                'Patates Çorbası',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepPurple, // Rengi deepPurple olarak ayarla
                                ),
                                textAlign: TextAlign.center, // Metni ortala
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  child: Divider(height: 20, color: Colors.deepPurple),
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
                            );
                          },
                          child: Container(
                            constraints: BoxConstraints.expand(),
                            color: Colors.white24,
                            child: Center(
                              child: Text(
                                'Poğaça',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepPurple, // Rengi deepPurple olarak ayarla
                                ),
                                textAlign: TextAlign.center, // Metni ortala
                              ),
                            ),
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
                            color: Colors.white24,
                            child: Center(
                              child: Text(
                                'Karışık Pizza',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepPurple, // Rengi deepPurple olarak ayarla
                                ),
                                textAlign: TextAlign.center, // Metni ortala
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  child: Divider(height: 20, color: Colors.deepPurple),
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
                            color: Colors.white24,
                            child: Center(
                              child: Text(
                                'Napolyon Soslu Makarna',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepPurple, // Rengi deepPurple olarak ayarla
                                ),
                                textAlign: TextAlign.center, // Metni ortala
                              ),
                            ),
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
                            color: Colors.white24,
                            child: Center(
                              child: Text(
                                'Ispanaklı Börek',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepPurple, // Rengi deepPurple olarak ayarla
                                ),
                                textAlign: TextAlign.center, // Metni ortala
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  child: Divider(height: 20, color: Colors.deepPurple),
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
                            color: Colors.white24,
                            child: Center(
                              child: Text(
                                'Pirzola',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepPurple, // Rengi deepPurple olarak ayarla
                                ),
                                textAlign: TextAlign.center, // Metni ortala
                              ),
                            ),
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
                            color: Colors.white24,
                            child: Center(
                              child: Text(
                                'Hünkarbeğendi',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepPurple, // Rengi deepPurple olarak ayarla
                                ),
                                textAlign: TextAlign.center, // Metni ortala
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  child: Divider(height: 20, color: Colors.deepPurple),
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















