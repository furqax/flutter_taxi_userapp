import 'package:country_calling_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PickerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Select Country',
          style: TextStyle(fontSize: 13.h, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: CountryPickerWidget(
          onSelected: (country) => Navigator.pop(context, country),
        ),
      ),
    );
  }
}
