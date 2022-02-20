void main(List<String> args) {
  final user = User(money: 5);

  user.calculateMoney((int result) {
    print(user.money);
    return result + 5;
  });
}

typedef CalculateCallBack = int Function(int data);

class User {
  int money;
  User({
    required this.money,
  });

//tipine void verirsek geri deger dondurmeyecek anlamı olur
  void calculateMoney(CalculateCallBack onComplete) {
    money += 5;
    final passData = onComplete(money);
  }
}
