void main() {
  final int classDegree = 4;
  bool isSuccess = false;
  const int successValue = 2;
  //2 ise ekrana bravo
  //1 ise olur
  //0 ise yeterli
  //diğer durumlarda başarısız

  switch (classDegree) {
    case successValue:
      print("bravo");
      isSuccess = true;
      break;
    case successValue:
      print("olur");
      isSuccess = true;
      break;
    case successValue:
      print("yeretli");
      isSuccess = true;
      break;
    default:
      print("başarısız");
      isSuccess = false;
  }
  print('çocuğunuzun sonucu: $isSuccess');

//mağazaya gelen isimlerden veli olan olursa print bravo yaz

  String name = "veli";
  const String specialName1 = "veli";
  const String specialName2 = "ekin";
  switch (name) {
    case specialName1:
    case specialName2:
      print("bravo");
      break;
    default:
      print("sorunluı");
  }
}
