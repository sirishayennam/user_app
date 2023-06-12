import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:user_app/global/global.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:user_app/models/user_modal.dart';

class AssistantMethods {
  static void redCurrentOnlineUserInfo() {
    currentFirebaseUser = fAut.currentUser;
    DatabaseReference userRef = FirebaseDatabase.instance
        .ref()
        .child("users")
        .child(currentFirebaseUser!.uid);
    userRef.once().then((snap) {
      if (snap.snapshot.value != null) {
        userModalCurrentinfo = Usermodal.fromSnapshort(snap.snapshot);
        print("name=" + userModalCurrentinfo!.name.toString());
        print("email=" + userModalCurrentinfo!.email.toString());
      }
    });
  }
}
