import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../styles/styles.dart';
import '../../widgetgotaxi/Text.dart';
import '../../widgetgotaxi/custombotton.dart';

class Refferaljoin extends StatelessWidget {
  const Refferaljoin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    text(title: "Skip", bold: true, underline: true, size: 15),
                    SizedBox(
                      width: 20.w,
                    )
                  ],
                ),
                Image.asset(
                  "assets/img/logo.png",
                  height: 150.h,
                  width: 150.w,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Image.asset("assets/img/refferal.png"),
                SizedBox(
                  height: 20.h,
                ),
                text(
                  title: "Referral!",
                  bold: true,
                  size: 25,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: text(
                      size: 10,
                      title:
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever."),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 350.w,
                      child: PinCodeTextField(
                        // controller: passwordTextEditingController,
                        cursorColor: Colors.black,
                        animationDuration: const Duration(milliseconds: 300),
                        enableActiveFill: true,
                        keyboardType: TextInputType.number,
                        textStyle: TextStyle(
                          color: primaryColor,
                        ),
                        pastedTextStyle: const TextStyle(
                          color: Colors.white,
                        ),

                        appContext: context,
                        length: 6,
                        onChanged: (value) {
                          print(value);
                          // setState(() {
                          //   // oTp = value;
                          // });
                        },
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(10),
                          fieldHeight: 50,
                          fieldWidth: 45,
                          selectedColor: Colors.transparent,
                          activeColor: Colors.transparent,
                          disabledColor: Colors.transparent,
                          inactiveFillColor: otpcolor,
                          activeFillColor: otpcolor,
                          inactiveColor: otpcolor,
                          selectedFillColor: otpcolor,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 60.h,
                ),
                submitButton(
                    title: "Submit", height: 50.h, width: 150.w, bold: true)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
