import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styles/styles.dart';
import '../widgetgotaxi/Text.dart';

class Rewards extends StatefulWidget {
  const Rewards({Key? key}) : super(key: key);

  @override
  State<Rewards> createState() => _RewardsState();
}

class _RewardsState extends State<Rewards> {
  String page = "Active";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Column(
          children: [
            SizedBox(
              height: 864.h,
              width: double.infinity,
              // color: Colors.amber,
              child: Stack(
                children: [
                  Container(
                    height: 255.h,
                    width: double.infinity,
                    color: primaryColor,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 50, left: 25, right: 15),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              text(
                                title: "Reward Points",
                                size: 25,
                                Colour: whitetextColor,
                                bold: true,
                              ),
                              Column(
                                children: [
                                  text(
                                    title: "Current Points",
                                    size: 10,
                                    Colour: whitetextColor,
                                    bold: true,
                                  ),
                                  SizedBox(height: 8.h),
                                  Row(
                                    children: [
                                      Image.asset("assets/img/coins.png"),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      text(
                                        title: "200",
                                        size: 15,
                                        Colour: textcolor,
                                        bold: true,
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  page = "Active";
                                  print(page);
                                  setState(() {});
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    text(
                                      title: "Active",
                                      size: 17,
                                      bold: true,
                                      Colour: whitetextColor,
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    page == "Active"
                                        ? Container(
                                            color: white,
                                            height: 3.h,
                                            width: 80.w,
                                          )
                                        : const SizedBox()
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  page = "Redeemed";
                                  print(page);
                                  setState(() {});
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    text(
                                      title: "Redeemed",
                                      size: 17,
                                      bold: true,
                                      Colour: whitetextColor,
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    page == "Redeemed"
                                        ? Container(
                                            color: white,
                                            height: 3.h,
                                            width: 80.w,
                                          )
                                        : const SizedBox()
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 190),
                    child: Center(
                      child: Container(
                        height: double.infinity,
                        width: 350.w,
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(5)),
                            //color: const Color(0xFF66BB6A),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.8),
                                blurRadius: 3.0,
                              ),
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 30, left: 15, right: 15),
                          child: SingleChildScrollView(
                            child: page == "Active"
                                ? Column(
                                    children: [
                                      const reward(),
                                      SizedBox(
                                        height: 15.h,
                                      ),
                                      const reward(),
                                      SizedBox(
                                        height: 15.h,
                                      ),
                                      const reward(),
                                      SizedBox(
                                        height: 15.h,
                                      ),
                                      const reward(),
                                      SizedBox(
                                        height: 15.h,
                                      ),
                                      const reward(),
                                      SizedBox(
                                        height: 15.h,
                                      ),
                                      const reward(),
                                      SizedBox(
                                        height: 15.h,
                                      ),
                                    ],
                                  )
                                : Column(
                                    children: [
                                      const reward(),
                                      SizedBox(
                                        height: 15.h,
                                      ),
                                      const reward(),
                                      SizedBox(
                                        height: 15.h,
                                      ),
                                    ],
                                  ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class reward extends StatelessWidget {
  const reward({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            text(
              title: "Go Taxi Reward points",
              size: 16,
              Colour: primaryColor,
              bold: true,
            ),
            SizedBox(
              height: 8.h,
            ),
            text(
              title: "  All Points gained",
              size: 11,
            ),
            SizedBox(
              height: 8.h,
            ),
            SizedBox(
              height: 10.h,
              width: 200.w,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: LinearProgressIndicator(
                  value: 0.8,
                  backgroundColor: Colors.grey,
                  valueColor: AlwaysStoppedAnimation<Color>(primaryColor),
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              height: 30.h,
              width: 80.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: primaryColor.withOpacity(0.3)),
              child: Center(
                child: text(
                    title: "Redeem",
                    size: 12,
                    bold: true,
                    Colour: primaryColor),
              ),
            ),
          ],
        ),
        Image.asset(
          "assets/img/unlock.png",
          height: 80.h,
          width: 80.w,
        )
      ],
    );
  }
}
