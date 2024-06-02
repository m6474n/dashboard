import 'package:dashboard/Components/CustomButton.dart';
import 'package:dashboard/Components/CustomInputField.dart';
import 'package:dashboard/Components/EmailField.dart';
import 'package:dashboard/Components/PasswordField.dart';
import 'package:dashboard/Components/PhoneField.dart';
import 'package:dashboard/Controllers/AuthController.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({
    super.key,
  });

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  bool SavePassword = false;
  @override
  Widget build(BuildContext context) {
      var _size = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 120),
      child: GetBuilder(
          init: AuthController(),
          builder: (controller) {
            return Form(
              key: controller.registerFormKey,
              child: Center(  
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Register",
                      style: GoogleFonts.poppins(
                         fontSize: _size*0.08,
                          fontWeight: FontWeight.w900,
                          color: Colors.deepPurple),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Enter your details to create a new account.",
                      style: GoogleFonts.poppins(
                         
                          fontWeight: FontWeight.w400,
                          letterSpacing: 2),
                    ),
                    SizedBox(
                      height: 8,
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
                                controller: controller.fnameController,
                                focusNode: controller.fnameNode,
                                label: "First Name",
                              )),
                              SizedBox(
                                width: 4,
                              ),
                              Expanded(
                                  child: CustomInputField(
                                controller: controller.lnameController,
                                focusNode: controller.lnameNode,
                                label: "Last Name",
                              ))
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          PhoneField(
                              controller: controller.confirmPassController,
                              label: "Enter Phone",
                              focusNode: controller.phoneNode),
                          SizedBox(
                            height: 4,
                          ),
                          EmailField(
                            label: 'Email',
                            controller: controller.emailController,
                            focusNode: controller.emailNode,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          PasswordField(
                              controller: controller.passController,
                              label: "Password",
                              focusNode: controller.passNode),
                          SizedBox(
                            height: 4,
                          ),
                          PasswordField(
                              controller: controller.confirmPassController,
                              label: "Confirm Password",
                              focusNode: controller.confirmPassNode),
                          SizedBox(
                            height: 4,
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
                                style: GoogleFonts.poppins(
                                   fontSize: _size*0.02, letterSpacing: 1.5),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          CustomButton(onTap: () {}, title: "Create Account"),
                          SizedBox(
                            height: 8,
                          ),
                          RichText(
                            text: TextSpan(
                                text: "Already have an account? ",
                                style: GoogleFonts.poppins(
                                    fontSize: _size*0.02, letterSpacing: 1.5),
                                children: [
                                  TextSpan(
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        controller.toggleScreeen();
                                      },
                                    text: "Login.",
                                    style: GoogleFonts.poppins(
                                        fontSize: _size*0.02,
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
              ),
            );
          }),
    );
  }
}
