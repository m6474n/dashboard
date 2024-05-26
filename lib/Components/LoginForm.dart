import 'package:dashboard/Components/CustomButton.dart';
import 'package:dashboard/Components/EmailField.dart';
import 'package:dashboard/Components/PasswordField.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginForm extends StatefulWidget {
  final TextEditingController emailcontroller;
  final FocusNode emailfocusNode;
  final TextEditingController passcontroller;
  final VoidCallback togglePage;
  final FocusNode passfocusNode;
  const LoginForm(
      {super.key,
      required this.emailcontroller,
      required this.emailfocusNode,
      required this.passcontroller,
      required this.togglePage,
      required this.passfocusNode});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool SavePassword = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(120),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Sign in",
            style: GoogleFonts.poppins(
                fontSize: 52,
                fontWeight: FontWeight.w900,
                color: Colors.deepPurple),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Enter your email and password to continue.",
            style: GoogleFonts.poppins(
                fontSize: 18, fontWeight: FontWeight.w400, letterSpacing: 2),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 130.0),
            child: Form(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                EmailField(
                  label: 'Email',
                  controller: widget.emailcontroller,
                  focusNode: widget.emailfocusNode,
                ),
                SizedBox(
                  height: 8,
                ),
                PasswordField(
                    controller: widget.passcontroller,
                    label: "Password",
                    focusNode: widget.passfocusNode),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Checkbox(
                      value: SavePassword,
                      onChanged: (newVal) {
                        setState(() {
                          SavePassword = !SavePassword;
                        });
                      },
                    ),
                    Text(
                      "Remember Password?",
                      style:
                          GoogleFonts.poppins(fontSize: 12, letterSpacing: 1.5),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                CustomButton(onTap: () {}, title: "Login"),
                SizedBox(
                  height: 16,
                ),
                RichText(
                  text: TextSpan(
                      text: "Don't have an account? ",
                      style:
                          GoogleFonts.poppins(fontSize: 12, letterSpacing: 1.5),
                      children: [
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              setState(() {
                                widget.togglePage();
                              });
                            },
                          text: "Sign Up.",
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.w900),
                        )
                      ]),
                )
              ],
            )),
          )
        ],
      ),
    );
  }
}
