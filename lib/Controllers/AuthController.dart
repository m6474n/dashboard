import 'package:dashboard/Components/LoginForm.dart';
import 'package:dashboard/Screens/Dashboard.dart';
import 'package:dashboard/Utils/toast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

class AuthController extends GetxController with SingleGetTickerProviderMixin {
  FirebaseAuth auth = FirebaseAuth.instance;
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final confirmPassController = TextEditingController();
  final fnameController = TextEditingController();
  final lnameController = TextEditingController();
  final phoneController = TextEditingController();
  final loginFormKey = GlobalKey<FormState>();
  final registerFormKey = GlobalKey<FormState>();
  bool SavedPassword = false;
  bool isLoginForm = false;

  final emailNode = FocusNode();
  final passNode = FocusNode();
  final confirmPassNode = FocusNode();
  final fnameNode = FocusNode();
  final lnameNode = FocusNode();
  final phoneNode = FocusNode();

  toggleSavedPassword() {
    SavedPassword = !SavedPassword;
    update();
  }

  AnimationController? _controller;
  void toggleScreeen() {
    isLoginForm = !isLoginForm;
    if (isLoginForm) {
      _controller!.reverse();
    } else {
      _controller!.forward();
    }
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    _controller!.dispose();
  }
  // createUser() async {
  //   if (registerFormKey.currentState!.validate()) {
  //     try {
  //       await auth.createUserWithEmailAndPassword(
  //           email: emailController.text, password: passController.text);
  //     } catch (e) {
  //       Toast.show(e.toString(), Colors.red);
  //     }
  //     ;
  //   }
  // }

  login() async {
    if (loginFormKey.currentState!.validate()) {
      EasyLoading.show(status: "Loogging in...");
      try {
        await auth
            .signInWithEmailAndPassword(
                email: emailController.text, password: passController.text)
            .then((value) {
          EasyLoading.dismiss();
          Get.to(() => Dashboard());
        });
      } catch (e) {
        Toast.show("Invalid Email or Password", Colors.red);
      }
    }
  }
}
