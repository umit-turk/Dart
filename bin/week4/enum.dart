void main() {
//enum demek sınıflandırmak demektir.
//enum aslında bir tamsayı sınıflandırma işlemidir.
  final customerMouse = Mouses.a4;
  print(customerMouse.index);
  print(customerMouse.name);

  switch (customerMouse) {
    case Mouses.magic:
      break;
    case Mouses.apple:
      break;
    case Mouses.logitech:
      break;
    case Mouses.a4:
      break;
  }
}

enum Mouses {
  magic,
  apple,
  logitech,
  a4,
}
