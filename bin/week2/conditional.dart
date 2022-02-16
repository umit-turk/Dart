void main() {
  int money = 15;
  String userName = "ali";
  //bool => 0 , 1
  bool isCustomerRich = true;
  print('$money' + userName);

  if (money > 10) {
    print("sen zenginsin abi");
  } else {
    print("gerekirse simit yeriz");
  }

  money = money - 10;

  if (money > 10) {
    print("sen çok zenginsin abi");
  } else {
    print(" simit de yiyemedik");
  }

  //müsteri bankaya gelir ve 10 tlsi vardir ve bir sorgu yapar
  //sorgu sonucu 20 tl si alınacak fakat eğer parası sırguya yeterli ise
  //eğer kalan parasi sifirdan kucukse bankadan kovulur
  //eğer adamin parasi banking cost a yetmiyorsa bankaya almayın

  int newCustomerMoney = 3;
  const int bankingCost = 5;
  const int bankingCostGeneral = 20;

  if (newCustomerMoney > bankingCost) {
    print("hoşgeldiniz");
    newCustomerMoney = newCustomerMoney - bankingCostGeneral;
  } else if (newCustomerMoney < 0) {
    print("dişari");
  } else {
    print("lütfen sıra aliniz");
  }

  //bir mağazaya isim verilecek
  //örnek isimler toplanır
  //örnek isimler ahmet,mehmet,veli,kx,x
  //mağaza sadece karakter uzunluğu 2 veya daha üstü olanı görmek istiyor
  //bu kloşula uyanlari yan yana görmek istiyorum aralarında bosluk olacak

  final String ahmetCompany = "Ahmet";
  final String mehmetCompany = "Mehmet";
  final String veliCompany = "Veli";
  final String kxCompany = "kx";
  final String xCompany = "x";

  const int companyLength = 5;
  String results = "";

  if (ahmetCompany.length > companyLength) {
    results = results + ahmetCompany;
  }
  if (mehmetCompany.length > companyLength) {
    results = results + mehmetCompany;
  }
  if (veliCompany.length > companyLength) {
    results = results + veliCompany;
  }
  if (kxCompany.length > companyLength) {
    results += kxCompany;
  }
  if (results.length == 0) {
    print("patron bulamadık");
  } else {
    print(results);
  }
}
