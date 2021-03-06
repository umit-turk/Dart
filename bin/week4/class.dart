import '../week3/methods.dart';
import 'class_detail/model/user_model.dart';
import 'class_detail/model/user_model2.dart';

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

  //müşteri id si 33 olana indirim yap
  if (user3.isSpecialUser("33")) {
    user3.money += 5;
    print(user3.money);
    print("para eklendi");
  }

  ///

  User2 newUser2 = User2('bank', 15);
  newUser2.money += 5;
  newUser2.money = null;

  print(newUser2.toString());
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

//

