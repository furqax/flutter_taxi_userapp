import 'package:flutter/material.dart';

import '../styles/styles.dart';

class text extends StatelessWidget {
  String title;
  Color? Colour;
  double size;
  bool? bold = false;
  bool? underline = false;
  bool? italic = false;

  text({
    required this.title,
    required this.size,
    this.Colour,
    this.bold = false,
    this.underline,
    this.italic,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colour ?? textcolor,
          fontSize: size * 1.1,
          fontWeight: bold == false ? FontWeight.normal : FontWeight.bold,
          fontStyle: italic == true ? FontStyle.italic : FontStyle.normal,
          decoration: underline == true
              ? TextDecoration.underline
              : TextDecoration.none,
        ));
  }
}
