import 'package:country_calling_code_picker/country.dart';
import 'package:country_calling_code_picker/functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styles/styles.dart';
import '../widgetgotaxi/countrypicker.dart';
import '../widgetgotaxi/customtextfield.dart';

import '../widgetgotaxi/Text.dart';
import '../widgetgotaxi/custombotton.dart';

class Signup extends StatefulWidget {
  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  // const Signup({Key? key}) : super(key: key);

  Country? _selectedCountry;
  bool _passwordVisible = true;
  var countryCode = '+92';

  @override
  void initState() {
    // TODO: implement initState
    initCountry();
    super.initState();
  }

  void initCountry() async {
    final country = await getDefaultCountry(context);
    setState(() {
      countryCode = country.callingCode.toString();
      _selectedCountry = country;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: SingleChildScrollView(
            child: SizedBox(
              child: Column(
                children: [
                  SizedBox(height: 30.h),
                  Image.asset(
                    "assets/img/logo.png",
                    height: 100.h,
                    width: 100.w,
                  ),
                  SizedBox(height: 15.h),
                  text(
                    title: "Sign Up",
                    size: 25,
                    bold: true,
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      text(
                        title: "Hey, lets get started!",
                        size: 10,
                        bold: true,
                      ),
                    ],
                  ),
                  CustomTextField(
                    // textEditingController: controller.namecontroller,
                    hintTitle: "Name",
                    height: 700,
                  ),
                  CustomTextField(
                    // textEditingController: controller.emailcontroller,
                    hintTitle: "Email",
                    height: 700,
                    validator: "email",
                  ),
                  // CustomTextField(
                  //   textEditingController: controller.phonecontroller,
                  //   hintTitle: "Phone",
                  //   height: 700,
                  // ),
                  SizedBox(
                    height: 15.h,
                  ),
                  SizedBox(
                    // width: 370.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: primaryColor.withOpacity(0.3)),
                              borderRadius: BorderRadius.circular(5)),
                          width: 90.w,
                          height: 60.h,
                          child: TextField(
                            style: TextStyle(color: textcolor, fontSize: 13.h),
                            // controller: controller.phoneOrEmailController,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              prefixIcon: InkWell(
                                onTap: () {
                                  _onPressed();
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: SizedBox(
                                      height: 27.h,
                                      //   width: 60.w,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: SizedBox(
                                            // width: 80.h,
                                            // color: Colors.grey,
                                            child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            _selectedCountry == null
                                                ? Container()
                                                : Image.asset(
                                                    _selectedCountry?.flag ??
                                                        '',
                                                    package:
                                                        'country_calling_code_picker',
                                                    height: 15.h,
                                                  ),
                                            SizedBox(
                                              width: 3.h,
                                            ),
                                            Text(
                                              '${_selectedCountry?.callingCode}',
                                              style: TextStyle(fontSize: 10.h),
                                            ),
                                            const Icon(Icons.arrow_drop_down),
                                          ],
                                        )),
                                      )),
                                ),
                              ),
                              contentPadding: EdgeInsets.all(5.0.h),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: const BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                          child: Container(
                            //Type TextField
                            // width: 230.w,
                            height: 60.h,
                            decoration: const BoxDecoration(
                                // color: primaryColor,
                                // border: Border.all(color: primaryColor),
                                // borderRadius: BorderRadius.circular(3)
                                ),

                            child: TextFormField(
                              // controller: controller.phonecontroller,
                              keyboardType: TextInputType.number,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 1000 * 0.015,
                              ),
                              cursorColor: primaryColor,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 1000 * 0.02,
                                    horizontal: 1000 * 0.01),
                                isDense: true,
                                // fillColor: lightbackground,
                                // filled: true,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide: BorderSide(
                                    color: primaryColor.withOpacity(0.3),
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
                                hintText: "3215487745",
                                hintStyle: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  CustomTextField(
                    // textEditingController: controller.passwordcontroller,
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
                  CustomTextField(
                    // textEditingController: controller.confirmpasswordcontroller,
                    hintTitle: "Confirm Password",
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
                  SizedBox(height: 10.h),
                  text(
                    title:
                        "Your Personal Data Will Be Used To Support Your Experience Throughout This App, To Manage Access To Your Account, And For Other Purposes Described In",
                    size: 11,
                  ),
                  text(
                    title: "Our Privacy Policy",
                    size: 11,
                    Colour: primaryColor,
                    bold: true,
                  ),
                  SizedBox(height: 15.h),
                  submitButton(
                      title: "Sign Up",
                      height: 40,
                      width: 170,
                      bold: true,
                      onPress: () {
                        // print("aaa${controller.phonecontroller.text}");

                        // controller.signup();
                      }),
                  SizedBox(height: 15.h),
                  text(
                    title: "OR",
                    size: 13,
                    bold: true,
                  ),
                  SizedBox(height: 15.h),
                  InkWell(
                    onTap: () {
                      // logincontroller.SignInWithGoogle();
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
                      // logincontroller.FaceBookSignOpt();
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
                        title: "Already Have an Account?",
                        size: 13,
                      ),
                      SizedBox(width: 5.w),
                      InkWell(
                        onTap: () {
                          // Get.toNamed("/login");
                        },
                        child: text(
                          title: "Sign In",
                          size: 16,
                          Colour: primaryColor,
                          underline: true,
                          bold: true,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15.h),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }

  void _onPressed() async {
    final country =
        await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return PickerPage();
    }));
    if (country != null) {
      setState(() {
        _selectedCountry = country;
      });
    }
  }
}
