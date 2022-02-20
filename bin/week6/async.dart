void main(List<String> args) async {
  //dart dili single threat çalışır.
  //event loopta önce main thereatler biter sonra asenkron
  //asenkron işlem yapıyorsak threadi durdur ve asenkron işlem yap devasm et

  //asenkron işlemlerde future çok kullanılır.

  //event loop yapısında önce ana threaddeki işlemler biter sonra future requestler başlar
  print("a");
  //5 sn bekle sonra gel hiçbir müşteri alma

//  await Future.forEach([1, 2, 3, 4, 5, 6], (int element) async {
  //  await Future.delayed(Duration(seconds: 1));
  //print('islem bitti $element');
  //});
  //await Future.delayed(Duration(seconds: 2));
  print("b");
  print('hello');

  Future.delayed(Duration(seconds: 1)).whenComplete(() {
    print('hello2');
  });
  print('hello3');
  Future.delayed(Duration(seconds: 2)).whenComplete(() {
    print('hello4');
  });

  //Senkron yapmak için stream kullanırız anlık olarak bir şey dinlemek istiyorsak stream kullanabiliriz.

  Stream<int> bankMoneys = Stream.empty();
  bankMoneys = dataAddBankMoney(15, 3);
  bankMoneys.listen((event) {
    print(event);
  });
}

Stream<int> dataAddBankMoney(int retryCount, int money) async* {
  int _localRetry = 0;
  await Future.delayed(Duration(seconds: 1));
  while (_localRetry < retryCount) {
    _localRetry++;
    yield money += 5;
  }
}

//bir servise cevasp sonradan gelecek
//matematik zaman alacak


