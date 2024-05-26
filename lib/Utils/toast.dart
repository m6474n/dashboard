import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Toast {
  static show(String msg, Color color) {
    Fluttertoast.showToast(
      msg: msg,
      backgroundColor: color,
      textColor: Colors.white,
    );
  }
}
