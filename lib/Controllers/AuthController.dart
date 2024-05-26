import 'package:dashboard/Utils/toast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final confirmPassController = TextEditingController();
  final fnameController = TextEditingController();
  final lnameController = TextEditingController();
  final phoneController = TextEditingController();

  final emailNode = FocusNode();
  final passNode = FocusNode();
  final confirmPassNode = FocusNode();
  final fnameNode = FocusNode();
  final lnameNode = FocusNode();
  final phoneNode = FocusNode();

  createUser() {
    try {
      auth.createUserWithEmailAndPassword(
          email: emailController.text, password: passController.text);
    } catch (e) {
      Toast.show(e.toString(), Colors.red);
    }
    ;
  }
}
