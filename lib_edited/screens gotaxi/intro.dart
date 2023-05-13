import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../pages/login/login.dart';
import '../styles/styles.dart';
import '../widgetgotaxi/Text.dart';
import '../widgetgotaxi/custombotton.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: InkWell(
                        onTap: () {},
                        child: text(
                          title: 'Skip',
                          bold: true,
                          size: 15,
                          Colour: lighttextcolor,
                          underline: true,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                Image.asset(
                  "assets/img/logo.png",
                  height: 150.h,
                  width: 170.w,
                ),
                SizedBox(height: 20.h),
                Image.asset(
                  "assets/img/intro.png",
                ),
                SizedBox(height: 15.h),
                text(
                  title: "Welcome!",
                  size: 25,
                  bold: true,
                ),
                SizedBox(height: 15.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: text(
                      size: 15,
                      title:
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever."),
                ),
                SizedBox(height: 30.h),
                submitButton(
                    title: "Get Started",
                    height: 40,
                    width: double.infinity,
                    bold: true,
                    onPress: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()));
                    })
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
