void main(List<String> args) {
  final user = _User("ali", age: 21);

  //musterinin yasi 18 den küçük kontrolü yaparmısın

  //if((user.age?? 0 )< 18){ }

  if (user.age is int) {
    if (user.age! < 18) {
      print("evet küçük");
      user.updateMoneyWithString("TR");
    } else {
      user.updateMoneyWithNumber(15);
    }
  }

  // Kullanıcılarımın parasi var ama paranın tipi değişken olabilir
  // parası olan adamin o parası bir isimde olabilir veya değer de olabilir
  // ya tr yazacak yada 15 yazabilir.
  // EKRANDA GÖSTER

  final _newType = user.moneyType is String ? (user.moneyType as String) : "";

  print(_newType + 'A');
//----------------

  int money1 = 50;
  int money2 = 50;

  if (money1 == money2) {
    print("ok");
  }

  final moneyBank1 = Bank(50, '12');
  final moneyBank2 = Bank(50, '12');

  print(moneyBank1 ==
      moneyBank2); //false //class lar birer referans tipidir.referans tipleri kendi içlerinde bir değer tutarlar

  // müşteri banka sınıfından iki kişinin parasini toplayip sonucunu söylermisin

  print(moneyBank1 + moneyBank2);

  // benim bankama gelen müşterilerimin idsi ayni olanlar ayni musteri olmalidir.
  print(moneyBank1.toString());
  print(moneyBank1 == moneyBank2);

  //diğer bankadan bir modul aldık bunu ekleyip müsterinin parasini sorgularmısın.

  // musteri adamin parasina 10 tl ekle ekrana dondur,adamın idsini 1 arttır, sonrasında ismini ümit yap

  moneyBank1.money += 10;
  print(moneyBank1.money);

  moneyBank1
    ..money += 10
    ..updateName("umit");

  print(moneyBank1);
}

class _User {
  final String name;

  int? age;

  dynamic moneyType;

  _User(this.name, {this.age});

  void updateMoneyWithString(String data) {
    moneyType = data;
  }

  void updateMoneyWithNumber(int number) {
    moneyType = number;
  }
}

class Bank with BankMixin {
  // with birlelikte kullanma dahil etmedir.
  int money;
  final String id;
  String? name;
  Bank(this.money, this.id);

//kendi operatörümüzü yazdık.
  int operator +(Bank newBank) {
    return this.money + newBank.money;
  }

  void updateName(String name) {
    this.name == name;
  }

//override metodu yazarak operatorlerimizi customize edebiliyoruz
  @override
  bool operator ==(Object object) {
    return object is Bank && object.id == id;
  }

  @override
  void sayBankHello() {
    calculateMoney(money);
  }
}

mixin BankMixin {
  //abstract clasa benzer
//final String data; tanımlayamayız bu kısımda
//mixinlerin genel amacı birden fazla alt dallar olduğunda
  void sayBankHello();
  void calculateMoney(int money) {
    print('money');
  }
}
