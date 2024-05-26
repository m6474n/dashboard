import 'package:dashboard/Components/CustomButton.dart';
import 'package:dashboard/Components/EmailField.dart';
import 'package:dashboard/Components/LoginForm.dart';
import 'package:dashboard/Components/PasswordField.dart';
import 'package:dashboard/Components/RegisterForm.dart';
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
  AnimationController? _controller;
  bool _isLoginForm = false;

  void toggleScreeen() {
    if (mounted) {
      setState(() {
        _isLoginForm = !_isLoginForm;
        if (_isLoginForm) {
          _controller!.reverse();
        } else {
          _controller!.forward();
        }
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller!.dispose();
  }

  final emailController = TextEditingController();
  final focusNode = FocusNode();
  final phoneController = TextEditingController();
  final phoneNode = FocusNode();
  final confirmPassCont = TextEditingController();
  final cPassNode = FocusNode();
  final passController = TextEditingController();
  final passNode = FocusNode();
  final TextEditingController fnameController = TextEditingController();
  final FocusNode fnameNode = FocusNode();
  final TextEditingController lnamecontroller = TextEditingController();
  final FocusNode lnameNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
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
              child: LoginForm(
                emailcontroller: emailController,
                emailfocusNode: focusNode,
                passcontroller: passController,
                passfocusNode: passNode,
                togglePage: toggleScreeen,
              ),
              // color: Colors.red,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: _height,
              width: _width * 0.5,
              child: RegisterForm(
                emailcontroller: emailController,
                emailfocusNode: focusNode,
                passcontroller: passController,
                togglePage: toggleScreeen,
                fnameController: fnameController,
                fnameNode: fnameNode,
                lnameNode: lnameNode,
                lnamecontroller: lnamecontroller,
                passfocusNode: passNode,
                phoneNode: phoneNode,
                phonecontroller: phoneController,
                conPasNode: cPassNode,
                confirmPasscontroller: confirmPassCont,
              ),
              // color: Colors.yellow,
            ),
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 500),
            transform: Matrix4.translationValues(
                _isLoginForm ? 0 : _width * 0.5, 0, 0),
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
  }
}
