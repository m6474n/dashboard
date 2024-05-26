import 'package:dashboard/Components/CustomButton.dart';
import 'package:dashboard/Components/CustomInputField.dart';
import 'package:dashboard/Components/EmailField.dart';
import 'package:dashboard/Components/PasswordField.dart';
import 'package:dashboard/Components/PhoneField.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterForm extends StatefulWidget {
  final TextEditingController emailcontroller;
  final FocusNode emailfocusNode;
  final TextEditingController fnameController;
  final FocusNode fnameNode;
  final TextEditingController lnamecontroller;
  final FocusNode lnameNode;
  final TextEditingController phonecontroller;
  final FocusNode phoneNode;
  final TextEditingController confirmPasscontroller;
  final FocusNode conPasNode;
  final TextEditingController passcontroller;
  final VoidCallback togglePage;
  final FocusNode passfocusNode;
  const RegisterForm(
      {super.key,
      required this.emailcontroller,
      required this.emailfocusNode,
      required this.fnameController,
      required this.fnameNode,
      required this.conPasNode,
      required this.phoneNode,
      required this.phonecontroller,
      required this.confirmPasscontroller,
      required this.lnameNode,
      required this.lnamecontroller,
      required this.passcontroller,
      required this.togglePage,
      required this.passfocusNode});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
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
            "Register",
            style: GoogleFonts.poppins(
                fontSize: 52,
                fontWeight: FontWeight.w900,
                color: Colors.deepPurple),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Enter your details to create a new account.",
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
                Row(
                  children: [
                    Expanded(
                        child: CustomInputField(
                      controller: widget.fnameController,
                      focusNode: widget.fnameNode,
                      label: "First Name",
                    )),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                        child: CustomInputField(
                      controller: widget.lnamecontroller,
                      focusNode: widget.lnameNode,
                      label: "Last Name",
                    ))
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                PhoneField(
                    controller: widget.confirmPasscontroller,
                    label: "Enter Phone",
                    focusNode: widget.phoneNode),
                SizedBox(
                  height: 8,
                ),
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
                PasswordField(
                    controller: widget.confirmPasscontroller,
                    label: "Confirm Password",
                    focusNode: widget.conPasNode),
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
                CustomButton(onTap: () {}, title: "Create Account"),
                SizedBox(
                  height: 16,
                ),
                RichText(
                  text: TextSpan(
                      text: "Already have an account? ",
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
                          text: "Login.",
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
