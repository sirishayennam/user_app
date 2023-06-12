import 'package:firebase_database/firebase_database.dart';

class Usermodal {
  String? phone;
  String? name;
  String? id;
  String? email;
  Usermodal({
    required this.email,
    required this.id,
    required this.name,
    required this.phone,
  });
  Usermodal.fromSnapshort(DataSnapshot snap) {
    phone = (snap.value as dynamic)["phone"];
    name = (snap.value as dynamic)["name"];
    id = snap.key!;
    email = (snap.value as dynamic)["email"];
  }
}
