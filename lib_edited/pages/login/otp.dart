import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:pin_code_fields/pin_code_fields.dart';

import '../../styles/styles.dart';
import '../../widgetgotaxi/Text.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child: SizedBox(
            // height: double.infinity,
            // width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: text(
                        title: '',
                        bold: true,
                        size: 15,
                        Colour: lighttextcolor,
                        underline: true,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                SvgPicture.asset(
                  "assets/svg/otp.svg",
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "Verify Your Account",
                  style: TextStyle(
                      color: textcolor,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "We will send you a one time OTP via SMS on ",
                  style: TextStyle(color: textcolor, fontSize: 12),
                ),
                Text(
                  "controller.phonecontroller.text",
                  style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
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
                        // controller: controller.otpcontroller,
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
                          setState(() {
                            // oTp = value;
                          });
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
                  height: 20.h,
                ),
                InkWell(
                  onTap: () {},
                  child: RichText(
                    text: TextSpan(
                      text: 'Didn\'t receive the OTP? ',
                      style: TextStyle(color: textcolor, fontSize: 13),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Resend OTP',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: primaryColor)),
                      ],
                    ),
                  ),
                ),
                //  Text(
                //   "Didn't receive the OTP?",
                //   style: TextStyle(color: textcolor, fontSize: 13),
                // ),
                // text(
                //   title: "Resend OTP",
                //   Colour: primaryColor,
                // ),
                SizedBox(
                  height: 20.h,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      height: 50.h,
                      width: 180.w,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text(
                          'Verify',
                          style: TextStyle(
                              color: whitetextColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
