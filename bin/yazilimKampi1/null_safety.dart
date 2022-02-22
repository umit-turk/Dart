void main(List<String> args) {
  int? money1;

  int money2 = 1;

  if (money1 != null) {
    getMoney(money1);
  }
}

void getMoney(int password) {
  if (password == null) {
    throw ("polisss");
  }
}
