void main() {
//benim bir müşterim var parası var mı yok mu bak
  final int userMoney = 0;
  controlUserMoney(userMoney, 5);

  final int userMoney2 = 6;
  controlUserMoney(userMoney2, 5);

  //yeni müşiteri gelir parası 50 tl
  //parasını dolar yapmak istiyor ve kaç dolar yaptığını merak ediyor

  double newUserMoney = 50;
  double doviz = 20;
  double result = convertToDolar(newUserMoney, doviz);
  print(result);

  // bana bir dolar hesaplama yap eğer ben sana söylemessem her zzaman 13 al.

  final newResult = convertToStandartDolor(100,
      dolarIndex:
          13); //değer vermek istiyorsak bu şekilde yazmalıyız çünkü fonksiyonda default bir değer mevcut.
  print(newResult);
  final newResult2 = convertToStandartDolor(100);
  print(newResult2);

  final euroResult = convertToEuro(
      userMoney:
          500); //converttoeuro metoduna require verdiğimiz için usermoney'e default olarak bir değer vermeliyiz
}

void controlUserMoney(int money, int minimumValue) {
  if (money > minimumValue) {
    print("para var");
  } else {
    print("para yok");
  }
}

double convertToDolar(double newUserMoney, double doviz) {
  return newUserMoney / doviz;
}

double convertToStandartDolor(double newUser, {double dolarIndex = 14}) {
  //parametreyi süslü parantezler içinde veriyorsak default değer atıyoruz
  return newUser / dolarIndex;
}

double convertToEuro({required double userMoney, double dolarIndex = 10}) {
  return userMoney / dolarIndex;
}
