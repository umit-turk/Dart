void main() {}

//İMPLEMENT EDERSEK IStudent'in kopyalarıdır
//IStudent ten türeyen classları birbiri ile eşit tutmak diyebiliriz.
abstract class IStudent {
  final String name;
  final int age;

  int? schollId;

  void saySomething() {}

  IStudent(this.name, this.age);
}

class Student implements IStudent {
  final String name;
  final int age;

  Student(this.name, this.age);

  @override
  void saySomething() {}

  @override
  int? schollId;
}

class Student2 implements IStudent {
  final String name;
  final int age;

  Student2(this.name, this.age);

  @override
  void saySomething() {
    print("a");
  }

  @override
  int? schollId;
}
