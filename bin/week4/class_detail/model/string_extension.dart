void main() {
  if ('ali'.isAdmin()) {
    print('object');
  }

  String? name;

  name.isAdmin();
}

//gelmezse boş kabul et
extension StringUserCheckExtension on String? {
  bool isAdmin() {
    return this?.toLowerCase() == 'admin'.toLowerCase();
  }
}
