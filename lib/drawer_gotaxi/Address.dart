import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../functions/functions.dart';
import '../styles/styles.dart';
import '../widgetgotaxi/Text.dart';
import '../widgetgotaxi/custombotton.dart';

class Address extends StatefulWidget {
  const Address({Key? key}) : super(key: key);

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  String labels = "home";
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
          child: Container(
              child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(height: 20.h),
                  text(
                    title: "Address",
                    size: 25,
                    bold: true,
                  ),
                  SizedBox(height: 20.h),
                  text(
                    title: "Your saved addresses",
                    size: 17.h,
                  ),
                  SizedBox(height: 30.h),
                  Expanded(
                    child: ListView.builder(
                        itemCount: favAddress.length,
                        itemBuilder: ((context, index) {
                          return Column(
                            children: [
                              Container(
                                width: double.infinity,
                                // height: 200.h,
                                decoration: BoxDecoration(
                                    color: white,
                                    borderRadius: BorderRadius.circular(5),
                                    //color:  Color(0xFF66BB6A),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        blurRadius: 2.0,
                                      ),
                                    ]),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 15),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                (favAddress[index]
                                                            ['address_name'] ==
                                                        'Home')
                                                    ? Image.asset(
                                                        'assets/images/home.png',
                                                        color: primaryColor,
                                                        width:
                                                            media.width * 0.075,
                                                      )
                                                    : (favAddress[index][
                                                                'address_name'] ==
                                                            'Work')
                                                        ? Image.asset(
                                                            'assets/images/briefcase.png',
                                                            color: primaryColor,
                                                            width: media.width *
                                                                0.075,
                                                          )
                                                        : Image.asset(
                                                            'assets/images/navigation.png',
                                                            color: primaryColor,
                                                            width: media.width *
                                                                0.075,
                                                          ),
                                                SizedBox(width: 10.w),
                                                text(
                                                  title:
                                                      "${favAddress[index]['address_name']} Address",
                                                  size: 18.h,
                                                  bold: true,
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.edit,
                                                  color: primaryColor,
                                                ),
                                                SizedBox(width: 8.w),
                                                const Icon(
                                                  Icons.delete,
                                                  color: Colors.grey,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 20.h),
                                        text(
                                          title: favAddress[index]
                                              ['pick_address'],
                                          size: 14.h,
                                          // bold: true,
                                        ),
                                        // SizedBox(height: 8.h),
                                        // text(
                                        //   title: "SW1A 1BQ",
                                        //   size: 14.h,
                                        //   // bold: true,
                                        // ),
                                        // SizedBox(height: 8.h),
                                        // text(
                                        //   title: "London",
                                        //   size: 14.h,
                                        //   // bold: true,
                                        // ),
                                        // SizedBox(height: 8.h),
                                        // text(
                                        //   title: "United Kingdom",
                                        //   size: 14.h,
                                        //   // bold: true,
                                        // ),
                                        // SizedBox(height: 10.h),
                                      ]),
                                ),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                            ],
                          );
                        })),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  submitButton(
                      title: "Update",
                      height: 40,
                      width: double.infinity,
                      bold: true,
                      onPress: () {
                        // Get.to(() =>  Editaddress());
                      }),
                ],
              ),
            ],
          )),
        ),
      ),
    );
  }
}
