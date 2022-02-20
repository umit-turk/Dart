import 'dart:convert';

void main(List<String> args) {
  final model = CarModel(
      category: CarModels.bmw, name: 'bmw x5', money: 33, isSecondHand: false);

  final carItems = [
    CarModel(category: CarModels.bmw, name: 'bmw x5', money: 33),
    CarModel(category: CarModels.toyota, name: 'toyota x5', money: 3424),
    CarModel(
        category: CarModels.yamaha,
        name: 'yamaha x5',
        money: 1343,
        isSecondHand: false),
    CarModel(
        category: CarModels.bmw,
        name: 'bmw x5',
        money: 5555,
        isSecondHand: false),
    CarModel(
        category: CarModels.toyota,
        name: 'toyoto x5',
        money: 6643,
        isSecondHand: false)
  ];

//kaç tane diyorsak where metodu kullanırız.
  final resultCount =
      carItems.where((element) => element.isSecondHand == true).length;
  print(resultCount);

  final newCar = CarModel(category: CarModels.bmw, name: 'bmw x5', money: 33);
  //listede içeriyormu diye bakmak için contains kullanırız
  final isHaveCar = carItems.contains(newCar);
  if (isHaveCar) {
    print('elimizde var');
  } else {
    print('patron yok alalım');
  }

  final resultBmwMore50 = carItems.where((element) {
    return element.category == CarModels.bmw && element.money > 50;
  }).join();

  print(resultBmwMore50);

  final carNames = carItems.map((e) => e.name).join(',');
  print(carNames);

  //singlewhere bir tane varsa benim için yeter.
  //mercedes yok ve singlewhere yaptığımızda bize crash atar
  try {
    final mercedesCar = carItems
        .singleWhere((element) => element.category == CarModels.mercedes);
  } catch (e) {
    print("araba yok abi");
  } finally {
    print("abi bu işlem ağır oldu birdaha sorma");
  }
//indexi bul
  final index = carItems.indexOf(newCar);
  print(index);

//araba ekle
  final _mercedes = CarModel(
      category: CarModels.mercedes,
      name: "amd",
      money: 1000,
      isSecondHand: false);

  carItems.add(_mercedes);
  print(carItems);

  //sort kücükten büyüge
  carItems.sort((first, second) => first.money.compareTo(second.money));
  print(carItems);
  //sort buyukten kucuge
  carItems.sort((first, second) => second.money.compareTo(first.money));
  print(carItems);

//
  final users = carItems.expand((element) => element.users).toList();
  calculateToUser(carItems);
  carItems.remove(_mercedes);
  carItems.removeWhere(
      (element) => element.category == CarModels.bmw || element.money < 50);

  print(carItems);
}

void calculateToUser(List<CarModel> items) {
  //itemleri düzelt bmw olanlari yamaha
  final _items = List<CarModel>.from(items);
  final newItems = _items.map((CarModel e) {
    if (e.category == CarModels.bmw) {
      e.category == CarModels.yamaha;
    }

    if (e.isSecondHand) {
      e.isSecondHand = false;
    }

    return e;
  }).toList();

  print(newItems);
}

//benim bir arabalar sınıfı olacak
//arabaların modeli, ismi, parasi kesin olacak sehri olmayacak, ikinci el durumu eğer musteri soylemessse her urun ikinci el kabul edilecek

//benim 5 tane arabam olacak.

//benim bu arabalarımın kaç tanesi ikinci el

//yeni bir araba geldi bu bizde var gibi hissediyorum

//bana bmw olan ve money 50 den büyük arabaların ismini söylermisin?

// ya acaba sadece isimleri yan yana gösteririmsin

// benim elimde mercedes var mi?

//su yeni gelen arabaya ver demissin bu kacıncı sırada

//ben yeni araba aldım eklermisin(mercedes)

//bana arabalarımı kucukten buyuye sirala

//ben bütün arabalrımı user yapıcam

//son ekleneni silelim

//bmw olan ve 50 den dusukleri silelim

class CarModel {
  //bir sınıf tutuyorsam ve kendi içerisinde karşılaştırma yapıyorsam listelerin içerisindede
  final CarModels category;
  final String name;
  final double money;
  String? city;
  bool isSecondHand;
  List<User> users;
  CarModel({
    required this.category,
    required this.name,
    required this.money,
    this.city,
    this.isSecondHand = true,
    this.users = const [],
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CarModel &&
        other.category == category &&
        other.name == name &&
        other.money == money &&
        other.city == city &&
        other.isSecondHand == isSecondHand;
  }

  @override
  String toString() {
    // TODO: implement toString
    return '$name - $money';
  }
}

class User {}

//enum ile araba modellerimizi oluşturduk.
enum CarModels { bmw, yamaha, toyota, mercedes }
