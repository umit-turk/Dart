void main() {
  //bir bankaya 10 müşteri gelir bunların 100 tlsi 110 tl 50 tl si vardir

  final int money1 = 100;
  final int money2 = 110;

  List<int> moneys = [100, 110, 500, 200, 300];
  final List<int> newMoneys = [100, 110, 500, 200, 300];

  print('müsteri 1 parasi: ${moneys[0]}');

  // parasi fazla olana göre sırala
  moneys.sort((a, b) => b.compareTo(a)); //büyükten küçüğe sırala
  moneys.add(5); //sona ekler
  moneys.insert(2, 30); //2. index e 30 ekler
  print(moneys);

  //newMoneys
  newMoneys.add(5);
  newMoneys.clear(); //listenin içerisini temizledik
  print(newMoneys);
//  newMoneys.reversed.toList(); //tersine çevir yeni bir liste oluştur.

// 100 tane müşteri yap bunların hepsine sıra ile numarasına göre 5 tl ekle

  List<double> customerMoney = List.generate(100, (index) {
    return index + 5;
  });
  print(customerMoney);

  //Customers 100 30 40 60
  // 35 tl den büyük olanlari burada kredi verebiliriz küçük olanlara bye

  List<int> moneyCustomerNews = [100, 30, 40, 60];

  for (int i = 0; i < moneyCustomerNews.length; i++) {
    print('musteri parasi: ${moneyCustomerNews[i]}');
    if (moneyCustomerNews[i] > 35) {
      print("kredi hazır");
    } else {
      print("bye");
    }
  }

  List<dynamic> users = [1, "a", true];

  for (var item in users) {
    print(item);
  }

  List<String> userName = ['ali', 'veli', 'mehmet'];

  userName.contains('ali');

  for (var item in userName) {
    print(item == 'ali');
  }
}
