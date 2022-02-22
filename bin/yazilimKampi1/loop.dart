void main(List<String> args) {
  print("hello");

  int number1 = 5;
  int money = 5;
  String message = 'mesaj';
  List<int> moneys = [5, 15, 3, 2, 1, 6];
  print(moneys[money]);
  // if (number1 == money) {
  //   print(moneys[0]);
  // } else if (number1 > money) {
  //   print("very good");
  // } else {
  //   print('no');
  // }

//for loop
  // for (var i = 0; i < moneys.length; i++) {
  //   if (moneys[i] == money) {
  //     print("ok");
  //   } else if (moneys[i] > money) {
  //     print("very good");
  //   } else {
  //     print('no');
  //   }
  // }

  // for in
  print('--------------');
  for (var money in moneys) {
    if (money == 5) {
      print("ok");
    } else if (money > 5) {
      print("very good");
    } else {
      print('no');
    }
  }
}
