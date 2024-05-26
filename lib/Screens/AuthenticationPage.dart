import 'package:dashboard/Components/CustomButton.dart';
import 'package:dashboard/Components/EmailField.dart';
import 'package:dashboard/Components/LoginForm.dart';
import 'package:dashboard/Components/PasswordField.dart';
import 'package:dashboard/Components/RegisterForm.dart';
import 'package:dashboard/Controllers/AuthController.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({super.key});

  @override
  State<AuthenticationScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return GetBuilder(
        init: AuthController(),
        builder: (controller) {
          return Scaffold(
            body: Stack(
              children: [
                Container(
                  height: _height,
                  width: _width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('../../assets/bg.png'),
                          fit: BoxFit.cover)),
                ),
                // Image.asset('././assets/bg.png'),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: _height,
                    width: _width * 0.5,
                    child: LoginForm(),
                    // color: Colors.red,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: _height,
                    width: _width * 0.5,
                    child: RegisterForm(),
                    // color: Colors.yellow,
                  ),
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  transform: Matrix4.translationValues(
                      controller.isLoginForm ? 0 : _width * 0.5, 0, 0),
                  child: Container(
                    height: _height,
                    width: _width * 0.5,
                    color: Colors.deepPurple,
                  ),
                )
              ],
            ),
            // floatingActionButton: FloatingActionButton(
            //   backgroundColor:
            //       _isLoginForm ? Colors.deepPurple : Colors.deepPurple.shade300,
            //   onPressed: toggleScreeen,
            // ),
          );
        });
  }
}
