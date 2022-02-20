class User2 {
  // özellikleri tanımlamalıyız ve özellikleri neler
  //data lara başlangıçda değer olmalı yada
  final String
      name; // late anlamı bu değişken sonradan dolacak ve anlam kazanacak
  int _money;

  int get money => _money;

  set money(int? money) {
    _money = money == null ? 0 : money;
  }

  final int? age;
  final String? city;

  late final String
      userCode; //late final dersek bunu constructorda kullanmalızyız.

  User2(this.name, this._money, {this.age, this.city}) {
    userCode = (city ?? "ist") + name;
  }
}

// User2 YE BİR UZANTI EKLİYORUZ
extension User2ControlExtension on User2 {
  void contolName() {
    print(name);
  }
}
