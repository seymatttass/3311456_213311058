import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';





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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
            Container(
              height: 200,
              child: Image.asset(
                'images/0ee3e4360f27beb3e0c8cd5f7a907347.jpg', // Resim yolunuza uygun olarak değiştirin
                fit: BoxFit.cover,
              ),
            ),

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
                style: TextStyle(fontSize: 15.0),
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
            Container(
              height: 200,
              child: Image.asset(
                'images/2c5778c05a723ee81716408649282356.jpg', // Resim yolunuza uygun olarak değiştirin
                fit: BoxFit.cover,
              ),
            ),
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
                style: TextStyle(fontSize: 15.0),
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
            Container(
              height: 200,
              child: Image.asset(
                'images/6a4465318f3cf72fa0708d7dc31d05b1.jpg', // Resim yolunuza uygun olarak değiştirin
                fit: BoxFit.cover,
              ),
            ),
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
                style: TextStyle(fontSize: 15.0),
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
            Container(
              height: 200,
              child: Image.asset(
                'images/30da50228346d0976ff6f87e7eb5db29.jpg', // Resim yolunuza uygun olarak değiştirin
                fit: BoxFit.cover,
              ),
            ),
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
                style: TextStyle(fontSize: 14.0),
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
            Container(
              height: 200,
              child: Image.asset(
                'images/a99b71b3ab0b260f52483c861f7cea28.jpg', // Resim yolunuza uygun olarak değiştirin
                fit: BoxFit.cover,
              ),
            ),
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
                style: TextStyle(fontSize: 15.0),
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
            Container(
              height: 200,
              child: Image.asset(
                'images/8a341af0d2a37b0836be4e75b938d715.jpg', // Resim yolunuza uygun olarak değiştirin
                fit: BoxFit.cover,
              ),
            ),
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
                style: TextStyle(fontSize: 14.0),
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
            Container(
              height: 200,
              child: Image.asset(
                'images/bde2d4fad603ab5610fb5ca8694778d1.jpg', // Resim yolunuza uygun olarak değiştirin
                fit: BoxFit.cover,
              ),
            ),
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
                style: TextStyle(fontSize: 15.0),
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
        title: Text('Hümkarbeğendi'),
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
            Container(
              height: 200,
              child: Image.asset(
                'images/d36b071f479f174a38cc4d1e4b75c098.jpg', // Resim yolunuza uygun olarak değiştirin
                fit: BoxFit.cover,
              ),
            ),
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
                style: TextStyle(fontSize: 13.0),
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
  final int star;

  FoodItem({required this.name, required this.star});    //zorunlu dolacak
}

class FoodPage extends StatelessWidget {
  final List<FoodItem> foodList = [
    FoodItem(name: 'Karışık pizza', star: 4),
    FoodItem(name: 'Patates çorbası', star: 3),
    FoodItem(name: 'Kuru fasulye', star: 5),
    FoodItem(name: 'Patlıcan musakka', star: 2),
    FoodItem(name: 'Kuru biber dolması', star: 4),
    FoodItem(name: 'Domates çorbası', star: 4),
    FoodItem(name: 'Mantı', star: 2),
    FoodItem(name: 'Patlıcanlı börek', star: 4),
    FoodItem(name: 'Mantar sote', star: 5),
    FoodItem(name: 'Pesto soslu makarna', star: 5),
    FoodItem(name: 'Karnıyarık', star: 3),
    FoodItem(name: 'Pırasa yemeği', star: 1),
    FoodItem(name: 'İçli köfte', star: 5),
    FoodItem(name: 'Mercimek çorbası', star: 4),
    FoodItem(name: 'Et sote', star: 1),
    FoodItem(name: 'Karnabahar', star: 3),
    FoodItem(name: 'Kumpir', star: 4),
    FoodItem(name: 'Nohut yemeği', star: 2),
    FoodItem(name: 'Keşkek', star: 5),
    FoodItem(name: 'Barbunya yemeği', star: 3),
    FoodItem(name: 'Bezelye yemeği', star: 2),
    FoodItem(name: 'Sufle', star: 4),
    FoodItem(name: 'Baklava', star: 2),
    FoodItem(name: 'Kısır', star: 2),
    FoodItem(name: 'Trileçe', star: 5),
    FoodItem(name: 'Baklava', star: 5),
    FoodItem(name: 'Şekerpare', star: 4),
    FoodItem(name: 'Muhallebi', star: 3),
    FoodItem(name: 'Supangle', star: 3),
    FoodItem(name: 'Browni', star: 5),
    FoodItem(name: 'Keşkül', star: 2),
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
                food.star,
                (index) => Icon(Icons.star, color: Colors.amber),
              ),
            ),
          );
        },
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

  void registerUser() async {         //firebase kullanıcı kayıt

    try {
      UserCredential userCredential =
      await _auth.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
    } catch (e) {
      print("Hata: $e");
    }


  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Kullanıcı Kaydı"),
      ),
      body: Stack(
          children:[
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/purple.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        ),
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  controller: _nameController,
                  decoration: InputDecoration(labelText: "Ad",
                    filled: true,
                    fillColor: Colors.white24,
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                TextField(
                  controller: _ageController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: "Yaş",
                    filled: true,
                    fillColor: Colors.white24,
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                TextField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(labelText: "E-posta",
                    filled: true,
                    fillColor: Colors.white24, // Arka plan rengi
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),

                ),
                TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(labelText: "Şifre",
                    filled: true,
                    fillColor: Colors.white24,
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: registerUser,
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.deepPurple),  //Buton rengi
                  ),
                  child: Text("Kaydet"),
                ),
              ],
            ),
          ),
        ),
    ],
      ),
    );
  }
}





