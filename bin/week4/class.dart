import '../week3/methods.dart';

void main() {
  //müşteri adı var, parası var, yasi var

  final int customerMoney = 50;
  final String customerName = "umit";
  final int customerAge = 13;
  final String customerCity = "Bursa";

  final int customerMoney2 = 100;
  final String customerName2 = "yasar";
  final int customerAge2 = 17;
  final String customerCity2 = "istanbul";

  //müşterimin yaşı 10 dan büyükse bir işlem yap

  int?
      NewMoney; //dart dilinde ? bu değişken sana null dönebilir demek.null  hgerhangi bir referans değeri yok demek.
  if (NewMoney != null) {
    print(NewMoney + 10);
  } else {
    print(10 + 10);
  }
  //bizim bir servisimiz var paralari veren eğer bir cevap gelmezse sen ana değer olarak 10 ata
  //print(newMoney! + 10);
  //print(newMoney + 10);

  //bankaya 3 tane müşteri gelir birinin 100 tl si var diğerinin hesabı yok diğerinin 0 tl si var
  //hesabı olmayana hesap açalım 0 tl si olanı kov 100 tl si olana hgoşgeldin de

  List<int?> customerMoneys = [
    100,
    null,
    0
  ]; // ? anlamı bu listenin içine gelecek data yok demek

  for (var item in customerMoneys) {
    if (item != null) {
      if (item > 0) {
        print("beyefendi");
      } else {
        print("by");
      }
    } else {
      print("hadi hesap açalım");
    }

    bool result = controlMoney(item) == null ? false : true;
    print(result);
  }
  int customerMoneyX = 15;
  User user1 = User("umit", 15, age: 26, city: "bursa", id: '123');
  User user2 = User("yasar", 17, id: '22');

  final user3 = User('türk', 159, age: 13, id: '33');

  print(user1.name);
  print(user3.userCode);

  //müşteri son gelen kişinin şehirine göre kampanya yapacak eğer istanbul ise

  if (user3.city == null) {
    print("müşteri sehit bilgisini vermemeiş");
  } else {
    if (user3.city!.isEmpty) {
      // ! işaretinini anlamı null olmadığına eminiz demek.
      print("ok ok");
    }
    if (user3.city == "istanbul") {
      print("tebrikler kazandınız");
    }
  }
}

//yeni bir method olsun bu methodda hesabı olmayanları ve parası olmayanları yok sayyalım

void controlCustomerAge(int value) {
  if (value > 10) {
    print("alısveris yapabilirsiniz");
  } else {
    print("alısveris yapamazsınız");
  }

  print('--' * 10);
}

int? controlMoney(int? money) {
  if (money != null && money > 0) {
    return money;
  } else {
    return null;
  }
}

//adi olmak zorunda
//parasi olmak zorunda
//yasını vermeyebilir
//sehir vermeyebilir
// city yoksa ist say
class User {
  // özellikleri tanımlamalıyız ve özellikleri neler
  //data lara başlangıçda değer olmalı yada
  late final String
      name; // late anlamı bu değişken sonradan dolacak ve anlam kazanacak
  late final int money;
  late final int? age;
  late final String? city;

  late final String
      userCode; //late final dersek bunu constructorda kullanmalızyız.

  final String id;

  User(String name, int money, {required this.id, int? age, String? city}) {
    //constructor
    //{} arasına yazarsak opsiyonel parametre alıyor.
    this.name = name;
    this.age = age;
    this.money = money;
    this.city = city;

    userCode = (city ?? 'ist') + name; // city yoksa ist kanul et
  }
}

//
class User2 {
  // özellikleri tanımlamalıyız ve özellikleri neler
  //data lara başlangıçda değer olmalı yada
  final String
      name; // late anlamı bu değişken sonradan dolacak ve anlam kazanacak
  final int money;
  final int? age;
  final String? city;

  late final String
      userCode; //late final dersek bunu constructorda kullanmalızyız.

  User2(this.name, this.money, {this.age, this.city}) {
    userCode = (city ?? "ist") + name;
  }
}
