//adi olmak zorunda
//parasi olmak zorunda
//yasını vermeyebilir
//sehir vermeyebilir
// city yoksa ist say
//id değişkenine sadece bu sınftan erişilebilsin
class User {
  // özellikleri tanımlamalıyız ve özellikleri neler
  //data lara başlangıçda değer olmalı yada
  late final String
      name; // late anlamı bu değişken sonradan dolacak ve anlam kazanacak
  late int money;
  late final int? age;
  late final String? city;

  late final String
      userCode; //late final dersek bunu constructorda kullanmalızyız.

  late final String _id; //private olmasını istiyorsak _ kullanıyoruz

  User(String name, int money, {required String id, int? age, String? city}) {
    //constructor
    //{} arasına yazarsak opsiyonel parametre alıyor.
    this.name = name;
    this.age = age;
    this.money = money;
    this.city = city;
    _id = id;
    userCode = (city ?? 'ist') + name; // city yoksa ist kanul et
  }

  bool isSpecialUser(String id) {
    return _id == id;
  }

  bool get isEmptyId => _id.isEmpty;
}
