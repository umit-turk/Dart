void main(List<String> args) {
  List<int> moneys = [5, 15, 3, 2, 1, 6];
  List<int> moneys2 = [5, 15, 31, 2, 25, 16];

  int money = 4;
  int totalMoney = 0;

  for (var i = 0; i < moneys.length; i++) {
    // calculateUser(i);
    totalMoney = totalMoney + calculateUser2(moneys[i], maxMoney: 5);
  }
}

//void geri değer döndürmüyor.
void calculateUser(int item) {
  String message = "hey";
  if (item == 5) {
    print(message);
  } else if (item > 5) {
    print("hopppp");
  } else {
    print("bomm");
  }
}

int calculateUser2(int item, {maxMoney = 1}) {
  String meesage = "hoşgeldiniz";
  String meesage2 = "hokkabaz gibisiniz";
  if (item == maxMoney) {
    print(meesage);
  } else if (item > 5) {
    print(meesage2);
  } else {
    print("bomm");
  }
  return item;
}

String hello(int data) {
  if (data % 2 == 0) {
    return "cift";
  } else {
    return "tek";
  }
}
