void main() {
  // String userName = "veli";
  // final verilirse değişken bir daha değişemez!uygulama çalıştığında runtimedaki son değerini alır
  //run time o anki çalışan değeri verir.
  //ekran geleceği an final'ı daha çok kullanıyoruz.
  // final int bankMoney = 100;
  //proje başlarken kod compile oldu o an neyse o gözükür.
//  const String bankName = "Garanti";

  // var userName2 = "veli2";

  //// örnek
  //Bank name = "VB BANK"
  //bank user 1 = "bank1Musteri"
  // bank user 1 in parasi 100.00
  // bank 1 musteriye kimse dokunamaz
  // yeni bir muısteri gelecek adi bank2musteri
  // yeni bankaya gelenden bu bank user1 parasini cıkartip ekrana gosterelim

  const String bankNameSpecial = "VB Bank";
  final String user1 = "Bank 1 musteri";
  double user1Money = 100.00;

  const String user2 = "Bank 2 musteri";
  double user2Money = 500.00;
  user2Money = user2Money - user1Money;
  print("user 2 moeny: $user2Money");
}
