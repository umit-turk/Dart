void main(List<String> args) {
  var money1 = "5";

//final run-time daki son değeri alır
  //final int totalMoney = 5;
//sınıftan bir obje oluşturabiliri

  HokkabazHuman snakeSerdar = HokkabazHuman("Serdar", 10);
  HokkabazHuman snakeAhmet = HokkabazHuman("Ahmet", 1000);

  // if (snakeSerdar.getMyMoney(10) == 20) {
  //   print("serdar niye soylemedin boyle oldugunu");
  // } else {
  //   throw ('polisss ${snakeSerdar.tckn ?? 'serdari arayin'} ');
  // }
  print(snakeAhmet.totalMoney);

  print(snakeSerdar.fakeMoney);
}

class NormalHuman {
  String name;
  int money;

  NormalHuman(this.name, this.money);
}

class HokkabazHuman {
  String name;
  int fakeMoney;
  String? tckn;
  late final double totalMoney;

  HokkabazHuman(this.name, this.fakeMoney) {
    if (fakeMoney > 500) {
      totalMoney = fakeMoney + fakeMoney * 2;
    }
  }

//ben sna 10 tl ekleyip getireceğim.
  int getMyMoney(int money) {
    fakeMoney += 5;

    return money + 5;
  }
}
