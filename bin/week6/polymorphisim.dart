void main(List<String> args) {
  //ortak metodların farklı classlarda farklı anlamlarda çalışarak işlerini yapması

  IUser user = Turk();

  user.sayName();
  user = ENG();
  user.sayName();
}

abstract class IUser {
  final String name;

  IUser(this.name);
  void sayName();
}

class Turk implements IUser {
  @override
  // TODO: implement name
  String get name => 'UMİT';

  @override
  void sayName() {
    print('merhaba kapidan hosgeldiniz $name');
  }
}

class ENG implements IUser {
  @override
  // TODO: implement name
  String get name => "JOHN";

  @override
  void sayName() {
    print('hello\'s welcome from door $name');
  }
}
