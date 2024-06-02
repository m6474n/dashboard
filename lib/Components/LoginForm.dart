import 'package:dashboard/Components/CustomButton.dart';
import 'package:dashboard/Components/EmailField.dart';
import 'package:dashboard/Components/PasswordField.dart';
import 'package:dashboard/Controllers/AuthController.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric
      (horizontal:120),
      child: GetBuilder(
          init: AuthController(),
          builder: (controller) {
            return Form(
              key: controller.loginFormKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sign in",
                    style: GoogleFonts.poppins(
                        fontSize: _size*0.08,
                        fontWeight: FontWeight.w900,
                        color: Colors.deepPurple),
                  ),
                
                  Text(
                    "Enter your email and password to continue.",
                    style: GoogleFonts.poppins(
                       
                        fontWeight: FontWeight.w400,
                        letterSpacing: 2),
                  ),
                  SizedBox(
                    height: 4,
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
                          height: 16,
                        ),
                        CustomButton(
                            onTap: () {
                              controller.login();
                            },
                            title: "Login"),
                        SizedBox(
                          height: 8,
                        ),
                        RichText(
                          text: TextSpan(
                              text: "Don't have an account? ",
                              style: GoogleFonts.poppins(
                                  fontSize:  _size*0.02, letterSpacing: 1.5),
                              children: [
                                TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      controller.toggleScreeen();
                                    },
                                  text: "Sign Up.",
                                  style: GoogleFonts.poppins(
                                      fontSize:  _size*0.02,
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
          }),
    );
  }
}
