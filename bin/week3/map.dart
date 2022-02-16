void main() {
  //musteri geldi adi ahmet parasi 20

  Map<String, int> users = {
    "ahmet": 20,
    "mehmet": 30,
  };
  print('ahmetin parasi ${users['ahmet']} ');

  // musteri olarak kimler var

  for (var item in users.keys) {
    print('${item} - ${users[item]}');
  }

  for (var i = 0; i < users.length; i++) {
    print('${users.keys.elementAt(i)} - ${users.values.elementAt(i)}');
  }

  // ben bankayım müşterilerimin birden fazla hesabı olabilir
  //ahmet bey 3 hesabı var sırasıyla 100, 300, 200
  //mehmet bey 2 hesabı var 30 50
  // veli bey 1 hesap 30

  //adamların hesaplarını kontrol et herhangi bir hesapta 150 tlden fazla olan vasrsa krediniz hazır

  Map<String, List<int>> vBank = {
    "ahmet": [100, 300, 200]
  };
  vBank['mehmet'] = [30, 50];
  vBank['veli'] = [30];

  for (var item in vBank.keys) {
    //birinci for bankanın tüm elemanları

    for (var money in vBank[item]!) {
      //her key'in valuesi olmayabilir bu sebeple ! koyduk.

      //user'ın hesaplarını dolaşıyoruz
      if (money > 150) {
        print("kredin hazır");
        break;
      }
    }
  }

  // bankadaki müsterilerin toplam mevlası

  for (var name in vBank.keys) {
    int result = 0;
    for (var money in vBank[name]!) {
      result = result + money;
    }

    print('${name} senin toplam paran ${result}');
  }
}
