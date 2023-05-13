import 'package:flutter/material.dart';

import '../styles/styles.dart';

Widget submitButton({
  double? height,
  double? width,
  String? title,
  bool? bold = false,
  final VoidCallback? onPress,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 50.0),
    child: SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all<double>(1),
          backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
          overlayColor: MaterialStateProperty.all<Color>(
            Colors.orangeAccent,
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6.0),
            ),
          ),
        ),
        onPressed: onPress,
        child: Text(
          title!,
          textScaleFactor: 1.2,
          style: TextStyle(
            color: Colors.white,
            fontWeight: bold! == false ? FontWeight.normal : FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}
