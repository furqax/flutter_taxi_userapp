import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styles/styles.dart';
import '../widgetgotaxi/Text.dart';
import '../widgetgotaxi/custombotton.dart';
import '../widgetgotaxi/customtextfield.dart';

bool check = false;

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    var auth = FirebaseAuth.instance;

    return MaterialApp(
        home: SafeArea(
      child: Scaffold(
        backgroundColor: whitetextColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: SingleChildScrollView(
            child: SizedBox(
              child: Column(
                children: [
                  SizedBox(height: 80.h),
                  Image.asset(
                    "assets/img/logo.png",
                    height: 130.h,
                    width: 170.w,
                  ),
                  SizedBox(height: 30.h),
                  text(
                    title: "Sign In",
                    size: 30,
                    bold: true,
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    children: [
                      text(
                        title: "Hey, lets get started!",
                        size: 13,
                        bold: true,
                      ),
                    ],
                  ),
                  CustomTextField(
                    // textEditingController: controller.emailcon,
                    hintTitle: "Email",
                    height: 700,
                  ),
                  CustomTextField(
                    // textEditingController: controller.passwordcon,
                    hintTitle: "Password",
                    height: 700,
                    absure: _passwordVisible,
                    onpassword: IconButton(
                      icon: Icon(
                          // Based on passwordVisible state choose the icon
                          _passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: primaryColor),
                      onPressed: () {
                        // Update the state i.e. toogle the state of passwordVisible variable
                        setState(() {
                          print(_passwordVisible);
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Row(
                    children: [
                      Checkbox(
                          value: check,
                          activeColor: primaryColor,
                          onChanged: (Value) {
                            check = Value!;
                            setState(() {});
                          }),
                      text(
                        title: "Keep Login",
                        size: 13,
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  submitButton(
                      title: "Sign In",
                      height: 40,
                      width: 170,
                      bold: true,
                      onPress: () {
                        // controller.Signinwithemail();
                        // Get.toNamed("login");
                      }),
                  SizedBox(height: 2.h),
                  TextButton(
                    onPressed: () {
                      // Get.toNamed("/forget");
                    },
                    child: text(
                      title: "Forget Your Password?",
                      size: 13,
                    ),
                  ),
                  SizedBox(height: 2.h),
                  InkWell(
                    onTap: () {
                      // controller.SignInWithGoogle();
                    },
                    child: Container(
                      height: 60.h,
                      width: 350.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: black),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/img/google.png",
                            height: 40.h,
                            width: 40.w,
                          ),
                          SizedBox(width: 5.w),
                          text(
                            title: "Continue With Google",
                            size: 16,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15.h),
                  InkWell(
                    onTap: () {
                      // controller.FaceBookSignOpt();
                    },
                    child: Container(
                      height: 60.h,
                      width: 350.w,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8),
                        // border: Border.all(color: black),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.facebook,
                            color: Colors.white,
                            size: 35,
                          ),
                          SizedBox(width: 5.w),
                          text(
                            title: "Continue With Facebook",
                            size: 16,
                            Colour: white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      text(
                        title: "Don't Have an Account?",
                        size: 13,
                      ),
                      SizedBox(width: 5.w),
                      InkWell(
                        onTap: () {
                          // Get.toNamed("/signup");
                        },
                        child: text(
                          title: "Register",
                          size: 16,
                          Colour: primaryColor,
                          underline: true,
                          bold: true,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
