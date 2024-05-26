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
    return Padding(
      padding: const EdgeInsets.all(120),
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
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 2),
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
                          controller: controller.emailController,
                          focusNode: controller.emailNode,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        PasswordField(
                            controller: controller.passController,
                            label: "Password",
                            focusNode: controller.passNode),
                        // SizedBox(
                        //   height: 8,
                        // ),
                        // Row(
                        //   children: [
                        //     Checkbox(
                        //       value: controller.SavedPassword,
                        //       onChanged: (newVal) {
                        //         controller.toggleSavedPassword();
                        //       },
                        //     ),
                        //     Text(
                        //       "Remember Password?",
                        //       style: GoogleFonts.poppins(
                        //           fontSize: 12, letterSpacing: 1.5),
                        //     )
                        //   ],
                        // ),
                        SizedBox(
                          height: 16,
                        ),
                        CustomButton(
                            onTap: () {
                              controller.login();
                            },
                            title: "Login"),
                        SizedBox(
                          height: 16,
                        ),
                        RichText(
                          text: TextSpan(
                              text: "Don't have an account? ",
                              style: GoogleFonts.poppins(
                                  fontSize: 12, letterSpacing: 1.5),
                              children: [
                                TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      controller.toggleScreeen();
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
          }),
    );
  }
}
