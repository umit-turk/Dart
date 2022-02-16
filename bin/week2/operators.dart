void main() {
  int money = 5;
  money += 1;
  money++;
  String name = "umit";
  String surname = "turk";
  print(name + surname);
  if (name != "umit") {}
  if (name.length > "umit".length) {}
  if (name.length <= "umit".length) {}
  if (surname.length == "turk") {}

  int appleMoney = 10;
  double discount = 2.5;

  double myMoney = 30;

  myMoney = myMoney - (appleMoney / discount);
  print(myMoney);
// 11 / 2 kalan kaç?
  print(myMoney % 2 == 0);
}
