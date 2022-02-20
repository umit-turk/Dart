import 'model/product_config_model.dart';

void main(List<String> args) {
  final newProduct = Product.money;
  calculateMoney();

  //user clasimi kullanarak ğroduct yapmak istiyorum

  final user1 = User("umit", "aa");

  final newProduct2 = Product(user1.product);
  final newProduct3 = Product.fromUser(user1);
  productNameChange();

  //api key neydi acaba
  ProductConfig.instance.apiKey;
}

void calculateMoney() {
  if ((Product.money ?? 0) > 5) {
    print('5 tl daha ekledik');
    Product.incrementMoney(5);
    print(Product.money);
  }
}

void productNameChange() {
  Product.money = null;
}

class Product {
  //classımızın harekete geçtiği nokta contructordur.
  //super üst sınıfına yollamada kulllanılır.
  static int? money = 10;
  String name;

  static const companyName = "vbBank";

//contructor geriye değer döndürmez eğer döndürmesini istiyorsak factory kullanırız
  factory Product.fromUser(User user) {
    return Product(user.name);
  }

  Product(this.name);
  Product.umit(
      [this.name =
          "ahmet"]); //köşeli parantezler içinde default parametre atayabiliyoruz

  static void incrementMoney(int newMoney) {
    if (money != null) {
      money = money! + newMoney;
    }
  }
}

class User {
  final String name;
  final String product;
  User(this.name, this.product);
}
