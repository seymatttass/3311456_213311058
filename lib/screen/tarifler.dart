import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';






//BEĞENDİKLERİM

class Tarif1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Kremalı Mantarlı Makarna'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'images/018c7c73-ead4-4958-8625-b102588a54b8.jpeg'), // Arka plan resmi yolunuza uygun olarak değiştirin
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Makarnayı paket üzerindeki talimatlara göre haşlayın. Süzün ve kenara alın.'
                'Mantarları temizleyin ve dilimleyin.'
                'Tereyağını tavada eritin. Sarımsakları ezerek ekleyin ve kısık ateşte sarımsakların kokusu çıkana kadar soteleyin.'
                'Dilimlenmiş mantarları ekleyin ve suyunu salıp çekene kadar orta ateşte kavurun.'
                'Mantarlar suyunu çektikten sonra kremayı ekleyin. Karıştırarak 1-2 dakika daha pişirin.'
                'Rendelenmiş parmesan peynirini ekleyin ve eriyene kadar karıştırın.'
                'Kremalı mantar sosunu haşlanmış makarnanın üzerine dökün. Karıştırarak sosu makarnaya yedirin.'
                'Tuz ve karabiber ile tatlandırın. İsteğe bağlı olarak maydanoz veya fesleğen yaprakları ile süsleyin.'
                'Kremalı mantarlı makarna sıcak servis yapın ve afiyetle tüketin.\nAfiyet olsun!',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Tarif2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Patates Çorbası'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'images/018c7c73-ead4-4958-8625-b102588a54b8.jpeg'), // Arka plan resmi yolunuza uygun olarak değiştirin
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Patatesleri soyun ve küp şeklinde doğrayın. Soğanı ve sarımsağı da ince şekilde doğrayın.'
                'Bir tencerede tereyağını veya sıvı yağı eritin.Doğranmış soğanı ve sarımsağı ekleyin. Kısık ateşte yumuşayana kadar soteleyin.'
                'Patatesleri tencereye ekleyin ve birkaç dakika karıştırarak kavurun.'
                'Tavuk veya sebze suyunu ekleyin. Suyun patatesleri geçecek kadar olduğundan emin olun.Tencerenin kapağını kapatın ve patatesler yumuşayana kadar orta ateşte pişirin (yaklaşık 15-20 dakika).'
                'Pişen patatesleri blender veya çatalla ezerek püre haline getirin. Daha pürüzsüz bir kıvam için blendırdan geçirebilirsiniz.Püre haline getirilen patatesleri tekrar tencereye alın. Sütü ekleyin ve karıştırın.'
                'Çorba kıvamına gelene kadar su ekleyebilirsiniz. Tuz ve karabiber ile tatlandırın.'
                'Çorba kaynamaya başlayınca altını kısın ve 5-10 dakika daha pişirin, arada karıştırarak çorbanın dibine yapışmasını engelleyin.'
                'Servis yaparken üzerine rendelenmiş kaşar peyniri veya taze doğranmış maydanoz serpiştirebilirsiniz.',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Tarif3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Poğaça'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'images/018c7c73-ead4-4958-8625-b102588a54b8.jpeg'), // Arka plan resmi yolunuza uygun olarak değiştirin
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Bir kapta unu, mayayı, toz şekeri ve tuzu karıştırın.'
                'Süt, su ve sıvı yağı ekleyerek yumuşak bir hamur elde edene kadar yoğurun. Yoğurduktan sonra hamuru ılık bir ortamda mayalanmaya bırakın, yaklaşık 1 saat kadar mayalanması için bekleyin.'
                'Mayalanan hamuru tekrar yoğurun ve ceviz büyüklüğünde parçalara ayırın.'
                'Her parçayı avucunuzda yuvarlayarak açın ve iç harç ile doldurun. İç harç için, beyaz peyniri, maydanozu ve zeytinleri karıştırın. İsteğe bağlı olarak baharatlar ekleyebilirsiniz.'
                'Poğaçaları kapatın ve üzerlerine hafifçe bastırarak şekil verin.'
                'Poğaçaları yağlı kağıt serili fırın tepsisine yerleştirin. Üzerlerine çırpılmış yumurta sürün ve çörek otu veya susam serpin.'
                'Önceden ısıtılmış 180 derece fırında üzerleri kızarana kadar pişirin, yaklaşık 20-25 dakika.'
                'Fırından çıkan poğaçaları ılık veya oda sıcaklığında servis yapın.\nAfiyet olsun!',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Tarif4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Karışık Pizza'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'images/018c7c73-ead4-4958-8625-b102588a54b8.jpeg'), // Arka plan resmi yolunuza uygun olarak değiştirin
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Hamur için, unu bir kaseye alın. Orta bir çukur oluşturun ve mayayı içine ekleyin.'
                'Ilık suyu mayanın üzerine dökün ve mayanın kabarması için 5-10 dakika bekleyin.'
                'Kabaran maya üzerine sıvı yağı, tuzu ve toz şekeri ekleyin. Karıştırarak hamuru yoğurun.'
                'Yoğurduğunuz hamuru, hafifçe unlanmış bir zeminde yaklaşık 5-10 dakika boyunca yoğurun. Elde ettiğiniz hamuru bir top haline getirin.'
                'Hamuru bir kaseye koyun ve üzerini nemli bir bezle örtün. Yaklaşık 1 saat kadar oda sıcaklığında mayalanmaya bırakın.'
                'Bu sırada sos için, domates sosunu bir kaseye alın. Ezilmiş sarımsağı, kekiği, biberiyeyi, tuzu ve karabiberi ekleyerek karıştırın. Sosu kenara koyun.'
                'Mayalanan hamuru unlanmış bir zeminde açın ve istediğiniz pizza tabanı boyutunda yuvarlak bir şekil verin.'
                'Pizza tabanını yağlı kağıt serili bir fırın tepsisine yerleştirin. Sosunu üzerine yayın.'
                'Üzerine dilimlenmiş sucuk, jambon, mantar, zeytin, yeşil biber, domates, soğan veya istediğiniz diğer malzemeleri serpiştirin.'
                'Rendelenmiş mozarella peyniri ve kaşar peynirini üzerine serpin.'
                'Önceden ısıtılmış 200 derece fırında pizza tabanı altın rengini alana kadar\nAfiyet olsun!',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Tarif5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Napolyon Soslu Makarna'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'images/018c7c73-ead4-4958-8625-b102588a54b8.jpeg'), // Arka plan resmi yolunuza uygun olarak değiştirin
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Makarnayı paket üzerindeki talimatlara göre haşlayın. Tuzlu kaynar suya makarnayı ekleyin ve aldığı süreye göre haşlayın. Haşlandıktan sonra süzün ve kenara alın.'
                'Geniş bir tavada tereyağını veya zeytinyağını eritin. Rendelenmiş veya doğranmış soğanı ekleyin ve yumuşayana kadar kısık ateşte soteleyin.'
                'Sarımsağı ekleyin ve birkaç dakika daha sotelemeye devam edin.'
                'Doğranmış domatesleri tavaya ekleyin. Toz şekeri, kekiği ve biberiyeyi de ekleyin. Tuz ve karabiberle tatlandırın.'
                'Sosu kısık ateşte 15-20 dakika kadar pişirin, domatesler iyice yumuşayana ve sos kıvamına gelene kadar karıştırarak pişirin.'
                'Haşlanmış makarnayı sosun içine ekleyin ve iyice karıştırın, sosun makarnaya iyice yapışmasını sağlayın.'
                'Servis tabağına alın ve üzerine rendelenmiş parmesan peyniri veya isteğe bağlı olarak diğer peynir çeşitlerini serpiştirin.'
                'Sıcak olarak servis yapın ve afiyetle tüketin.\nAfiyet olsun!',
                style: TextStyle(fontSize: 19.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Tarif6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Ispanaklı Börek'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'images/018c7c73-ead4-4958-8625-b102588a54b8.jpeg'), // Arka plan resmi yolunuza uygun olarak değiştirin
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Ispanakları iyice yıkayın ve ince doğrayın. Eğer dondurulmuş ıspanak kullanıyorsanız, önceden çözdürüp suyunu iyice sıkın.'
                'Geniş bir tavada zeytinyağını ısıtın. Soğanı ekleyin ve yumuşayana kadar soteleyin. Ardından sarımsağı ekleyip birkaç dakika daha soteleyin.'
                'Doğranmış ıspanakları tavaya ekleyin. Ispanaklar suyunu salıp çekene kadar pişirin. Tuz ve karabiberle tatlandırın. Soğumaya bırakın.'
                'Ayrı bir kapta lor peyniri veya beyaz peyniri yoğurtla karıştırın.'
                'Hazır yufkaları tezgaha serin. Her bir yufkayı yağlayın veya sıvı yağ ile fırça yardımıyla yağlayın.'
                'Yufkanın geniş tarafına ıspanaklı karışımdan yayın ve üzerine peynirli karışımdan ekleyin. Daha sonra yufkayı rulo şeklinde sarın.'
                'Rulo şeklindeki böreği biraz bastırarak hafifçe düzleştirin ve istediğiniz büyüklükte parçalara kesin.'
                'Kesilmiş börekleri yağlanmış veya yağlı kağıt serili fırın tepsisine yerleştirin.'
                'Üzerine çırpılmış yumurta sürün.'
                'Önceden ısıtılmış 180 derece fırında üzeri kızarana kadar pişirin, yaklaşık 25-30 dakika.'
                'Sıcak veya ılık olarak servis yapın.\nAfiyet olsun!',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Tarif7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Pirzola'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'images/018c7c73-ead4-4958-8625-b102588a54b8.jpeg'), // Arka plan resmi yolunuza uygun olarak değiştirin
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Pirzolaları tuz ve karabiber ile marine edin. Bir tabağa alın ve her iki tarafını da tuz ve karabiber ile ovalayarak marine edin. Eğer isterseniz sarımsak da ekleyebilirsiniz.'
                'Marine edilen pirzolaları buzdolabında 30 dakika kadar dinlendirin. Bu süre boyunca etin lezzetini ve yumuşaklığını artıracaktır.'
                'Tavayı orta ateşte ısıtın ve sıvı yağı ekleyin.'
                'Pirzolaları tavaya yerleştirin ve her iki tarafını da güzelce kızartın. Pirzolaları yaklaşık 4-5 dakika pişirin veya istediğiniz şekilde pişirme derecesine gelene kadar tavada tutun. Etin iç sıcaklığının 63-71°C arasında olduğundan emin olun.'
                'Pişen pirzolaları servis tabağına alın ve birkaç dakika dinlendirin.'
                'Dilimlenmiş patates, sebzeler veya salata ile servis yapın.'
                'Sıcak olarak servis yapın ve afiyetle tüketin.\nAfiyet olsun!',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Tarif8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Hünkarbeğendi'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'images/018c7c73-ead4-4958-8625-b102588a54b8.jpeg'), // Arka plan resmi yolunuza uygun olarak değiştirin
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Etli iç harç için; bir tencerede tereyağını eritin ve doğranmış soğanı ekleyerek karamelize olana kadar kavurun. Sarımsakları ekleyin ve kokusu çıkana kadar soteleyin.'
                'Kuşbaşı etleri tencereye ekleyin ve etler suyunu salıp çekene kadar kısık ateşte pişirin.'
                'Domates salçasını ekleyin ve kavurun. Ardından kimyon, tuz ve karabiberi ekleyerek karıştırın.'
                'Etlerin üzerini kapatacak kadar su ekleyin ve etler yumuşayana kadar pişirin. Dilerseniz düdüklü tencere kullanarak pişirme süresini kısaltabilirsiniz.'
                'Patlıcanları közleyin veya fırında közlemek için bıçakla çizikler atarak üzerlerini yağlayıp 200 derece fırında pişirin. Kabuklarını soyun ve ezin.'
                'Başka bir tencerede tereyağını eritin. Unu ekleyin ve kısık ateşte kokusu çıkana kadar kavurun.'
                'Sütü yavaş yavaş ekleyerek sürekli karıştırın. Karışımı koyulaşıp kaynayana kadar pişirin.'
                'Ezilmiş patlıcanları süt ve un karışımına ekleyin. Karıştırarak pürüzsüz bir kıvam elde edene kadar pişirin.'
                'Rendelenmiş kaşar peynirini ekleyin, tuz ve karabiberle tatlandırın. Karıştırarak peynir eriyene kadar pişirin.'
                'Servis tabağına beğendi sosunu yayın ve üzerine etli iç harcını ekleyin.'
                'Üzeri için, bir tavada tereyağını eritin ve pul biberi ekleyin. Pul biberi kızdırarak tereyağına tat verin.'
                'Pul biberli tereyağını hünkarbeğendiye gezdir.\nAfiyet olsun!',
                style: TextStyle(fontSize: 17.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}





//DEĞERLENDİRMELER

class FoodItem {
  final String name;
  final int rating;

  FoodItem({required this.name, required this.rating});
}

class FoodPage extends StatelessWidget {
  final List<FoodItem> foodList = [
    FoodItem(name: 'Karışık pizza', rating: 4),
    FoodItem(name: 'Patates çorbası', rating: 3),
    FoodItem(name: 'Kuru fasulye', rating: 5),
    FoodItem(name: 'Patlıcan musakka', rating: 2),
    FoodItem(name: 'Kuru biber dolması', rating: 4),
    FoodItem(name: 'Domates çorbası', rating: 4),
    FoodItem(name: 'Mantı', rating: 2),
    FoodItem(name: 'Patlıcanlı börek', rating: 4),
    FoodItem(name: 'Mantar sote', rating: 5),
    FoodItem(name: 'Pesto soslu makarna', rating: 5),
    FoodItem(name: 'Karnıyarık', rating: 3),
    FoodItem(name: 'Pırasa yemeği', rating: 1),
    FoodItem(name: 'İçli köfte', rating: 5),
    FoodItem(name: 'Mercimek çorbası', rating: 4),
    FoodItem(name: 'Et sote', rating: 1),
    FoodItem(name: 'Karnabahar', rating: 3),
    FoodItem(name: 'Kumpir', rating: 4),
    FoodItem(name: 'Nohut yemeği', rating: 2),
    FoodItem(name: 'Keşkek', rating: 5),
    FoodItem(name: 'Barbunya yemeği', rating: 3),
    FoodItem(name: 'Bezelye yemeği', rating: 2),
    FoodItem(name: 'Sufle', rating: 4),
    FoodItem(name: 'Baklava', rating: 2),
    FoodItem(name: 'Kısır', rating: 2),
    FoodItem(name: 'Trileçe', rating: 5),
    FoodItem(name: 'Baklava', rating: 5),
    FoodItem(name: 'Şekerpare', rating: 4),
    FoodItem(name: 'Muhallebi', rating: 3),
    FoodItem(name: 'Supangle', rating: 3),
    FoodItem(name: 'Browni', rating: 5),
    FoodItem(name: 'Keşkül', rating: 2),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Değerlendirmeler'),
      ),
      body: ListView.builder(
        itemCount: foodList.length,
        itemBuilder: (context, index) {
          final food = foodList[index];
          return ListTile(
            title: Text(food.name),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(
                food.rating,
                (index) => Icon(Icons.star, color: Colors.amber),
              ),
            ),
          );
        },
      ),
    );
  }
}





//ÖZEL TARİFLERİM

class Recipe {
  final String title;
  final String description;

  Recipe({required this.title, required this.description});
}

class MyRecipesPage extends StatefulWidget {
  @override
  _MyRecipesPageState createState() => _MyRecipesPageState();
}

class _MyRecipesPageState extends State<MyRecipesPage> {
  List<Recipe> recipes = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Özel Tariflerim'),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          final recipe = recipes[index];
          return ListTile(
            title: Text(recipe.title),
            subtitle: Text(recipe.description),
          );
        },
      ),
      floatingActionButton: Stack(
        children: [
          Positioned(
            bottom: 16.0,
            right: 16.0,
            child: FloatingActionButton(
              onPressed: () {
                // Ekleme işlemi için dialog aç
                showDialog(
                  context: context,
                  builder: (context) {
                    String title = '';
                    String description = '';

                    return AlertDialog(
                      title: Text('Tarif Ekle'),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextField(
                            decoration: InputDecoration(labelText: 'Başlık'),
                            onChanged: (value) {
                              title = value;
                            },
                          ),
                          TextField(
                            decoration: InputDecoration(labelText: 'Açıklama'),
                            onChanged: (value) {
                              description = value;
                            },
                          ),
                        ],
                      ),
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            // Tarifi listeye ekle ve dialogu kapat
                            setState(() {
                              recipes.add(Recipe(
                                  title: title, description: description));
                            });
                            Navigator.pop(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary:
                                Colors.redAccent, // Butonun arka plan rengi
                          ),
                          child: Text('Ekle'),
                        ),
                      ],
                    );
                  },
                );
              },
              backgroundColor:
                  Colors.deepPurple, // FloatingActionButton'ın arka plan rengi
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}







//FİREBASE KAYIT OL

class UserRegistrationScreen extends StatefulWidget {
  @override
  _UserRegistrationScreenState createState() => _UserRegistrationScreenState();
}

class _UserRegistrationScreenState extends State<UserRegistrationScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void dispose() {
    _nameController.dispose();
    _ageController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void registerUser() async {
    // Your registration code...
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Kullanıcı Kaydı"),
      ),
      body: SingleChildScrollView(
        // Add SingleChildScrollView
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: _nameController,
                decoration: InputDecoration(labelText: "Ad"),
              ),
              TextField(
                controller: _ageController,
                decoration: InputDecoration(labelText: "Yaş"),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(labelText: "E-posta"),
                keyboardType: TextInputType.emailAddress,
              ),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(labelText: "Şifre"),
                obscureText: true,
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: registerUser,
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.deepPurple),
                ),
                child: Text("Kaydet"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}






//VERİTABANI SQLİTE

class DatabaseHelper {
  static final _databaseName = "my_database.db";
  static final _databaseVersion = 1;

  static final table = 'my_table';
  static final columnId = 'id';
  static final columnName = 'name';
  static final columnAge = 'age';

  static Future<Database> open() async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, _databaseName);
    return openDatabase(
      path,
      version: _databaseVersion,
      onCreate: (db, version) {
        return db.execute('''
          CREATE TABLE $table (
            $columnId INTEGER PRIMARY KEY,
            $columnName TEXT NOT NULL,
            $columnAge INTEGER NOT NULL
          )
        ''');
      },
    );
  }

  static Future<void> insertData(String name, int age) async {
    final db = await open();
    await db.insert(
      table,
      {
        columnName: name,
        columnAge: age,
      },
    );
  }

  static Future<List<Map<String, dynamic>>> getAllData() async {
    final db = await open();
    return db.query(table);
  }

  void main() async {
    // Veritabanı bağlantısını açma
    final db = await DatabaseHelper.open();

    // Verileri getirme
    List<Map<String, dynamic>> data = await DatabaseHelper.getAllData();

    // Verileri çıktı olarak gösterme
    print(data);

    // Veritabanı bağlantısını kapatma
    await db.close();
  }

  static Future<void> deleteData(int id) async {
    final db = await open();
    await db.delete(
      table,
      where: '$columnId = ?',
      whereArgs: [id],
    );
  }
}
