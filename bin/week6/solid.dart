void main() {
  IDatabase database = SQL();

  database = Mongo();
  database.write();
}

//bir class kendi amacına hitap eder kendi işlerini yapar.
class UserManager {
  String name;
  UserManager({
    required this.name,
  });
  void changeUserName(String name) {
    this.name = name;
  }
}

class UserLocalization {
  final UserManager manager;

  UserLocalization(this.manager);

  void UpdateNameAndLocalization(args) {
    manager.changeUserName("a");
    changeLocalization(args);
  }

  void changeLocalization(args) {
    print("object");
  }
}

///core classlar kendi içerinde değiştirilememeli alt dallardan üst dalların özelliklerini kullanarak devam ediyoruz.

class Product {
  final String name;
  final String money;
  Product(this.name, this.money);
}

class ProductCategory extends Product {
  ProductCategory(String name, String money) : super(name, money);

  final String category = "ab";
}

abstract class IDatabase {
  void write();
}

class SQL extends IDatabase {
  @override
  void write() {
    // TODO: implement write
  }
}

class Mongo extends IDatabase {
  @override
  void write() {
    // TODO: implement write
  }
}

//IUserOperationlarını parçaladık avantajı İNTERFACELERİ PARÇALAYARAK DAHA GELİŞTİRİLERİLİR KOD YAZARIZ

abstract class IUserOperation with IUserLocation, ILanguage {
  void write();
  void read();
  void delete();
}

abstract class IUserLocation {
  void locationChange();
}

abstract class ILanguage {
  void language();
}

class UserLocation extends IUserLocation {
  @override
  void locationChange() {
    // TODO: implement locationChange
  }
}

//

abstract class ICameraManager {
  void readQR();
}

class DeviceCameraMager extends ICameraManager {
  final IphoneCameraRead iphoneCameraRead;

  DeviceCameraMager(this.iphoneCameraRead);
  @override
  void readQR() {
    // TODO: implement readQR
  }
}

class IphoneCameraRead extends ICameraManager {
  @override
  void readQR() {
    // TODO: implement readQR
  }
}
