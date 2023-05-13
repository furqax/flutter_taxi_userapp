import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../functions/functions.dart';
import '../styles/styles.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {Key? key,
      this.height,
      this.focus = false,
      this.hintTitle,
      this.title,
      this.onTap,
      this.textdirection,
      this.pretitle,
      this.textEditingController,
      this.validator,
      this.onPress,
      this.absure = false,
      this.onpassword,
      this.keyboardType})
      : super(key: key);
  final double? height;
  final String? hintTitle;
  final String? title;
  dynamic onTap;

  final String? pretitle;
  final String? validator;
  final String? keyboardType;
  final String? textdirection;

  final VoidCallback? onPress;
  final Widget? onpassword;

  final bool? focus;
  final bool absure;

  final TextEditingController? textEditingController;
  @override
  Widget build(BuildContext context) {
    String validateEmail(
      String? value,
    ) {
      Pattern pattern =
          r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
          r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
          r"{0,253}[a-zA-Z0-9])?)*$";
      RegExp regex = RegExp(pattern.toString());
      if (!regex.hasMatch(value!)) {
        return "enter_valid_email";
      } else {
        return '';
      }
    }

    return Padding(
      padding: EdgeInsets.only(
        top: height! * 0.0,
      ),
      child: Column(
        children: [
          pretitle != "" && pretitle != null
              ? Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          '$pretitle',
                          style: TextStyle(color: textColor),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                      ],
                    ),
                  ],
                )
              : SizedBox(
                  height: 15.h,
                ),
          SizedBox(
            // height: height! * 0.06,
            child: TextFormField(
              textDirection: (choosenLanguage == 'iw' ||
                      choosenLanguage == 'ur' ||
                      choosenLanguage == 'ar')
                  ? TextDirection.rtl
                  : TextDirection.ltr,
              autofocus: focus == true ? true : false,
              controller: textEditingController,
              keyboardType: keyboardType == "numeric"
                  ? TextInputType.number
                  : TextInputType.multiline,
              obscureText: absure,
              // hintTitle == "Password" || hintTitle == "Confirm Password"
              //     ? true
              //     : false,
              style: TextStyle(
                color: Colors.black,
                fontSize: height! * 0.02,
              ),
              cursorColor: Colors.black,
              decoration: InputDecoration(
                suffixIcon: onpassword,
                contentPadding: EdgeInsets.symmetric(
                    vertical: height! * 0.025, horizontal: height! * 0.02),
                isDense: true,
                // fillColor: lightbackground,
                // filled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(
                    color: Colors.grey.withOpacity(0.8),
                    width: 1.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(
                    color: primaryColor,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: const BorderSide(
                      width: 0,
                      // style: BorderStyle.none,
                      color: Colors.green),
                ),
                hoverColor: primaryColor,
                focusColor: primaryColor,
                hintText: hintTitle,
                hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: height! * 0.020,
                    fontWeight: FontWeight.w500),
              ),
              validator: validator == "email"
                  ? validateEmail
                  : validator == 'no'
                      ? null
                      : (value) {
                          if (value!.isEmpty) {
                            return validator;
                          } else {}

                          return null;
                        },
              onTap: onPress,
              onChanged: onTap,
            ),
          ),
        ],
      ),
    );
  }
}
