void main() {
  final userNormal = User("Akbank", 100);
  final userBnak = BankUser("garanti", 200, 1);
  final userSpecial = SpecialUser('das', 10, 5, 3);
  userNormal.sayMoneyWithCompanyName();
  userBnak.sayMoneyWithCompanyName();

  userSpecial.sayMoneyWithCompanyName();
  print(userSpecial.calculateMoney);
  print(userSpecial.money);
}

// paralarını görebilmelerini istiyorum benim bnanka ismimle birlikte

//abstract ile soyut sınıf oluştururuz.sınıfları gruplandırıp  ortak metodları ara classlarda yapmamızı sağlar.
abstract class IUser {
  final String name;
  final int money;

  IUser(this.name, this.money);
  void sayMoneyWithCompanyName() {
    print('Ahmet - $money paranız vardir');
  }
}

class User extends IUser {
  final String name;
  final int money;

  User(this.name, this.money) : super(name, money);
}

class BankUser extends IUser {
  final int bankingCode;

  BankUser(String name, int money, this.bankingCode) : super(name, money);

  void bankSpecialLogic() {
    print(money);
  }
}

class SpecialUser extends IUser {
  final String name;
  final int money;
  final int bankingCode;
  late final double _discount;

  SpecialUser(this.name, this.money, this.bankingCode, double discount)
      : super(name, money) {
    _discount = discount;
  }

  double get calculateMoney => money - (money / _discount);
}
