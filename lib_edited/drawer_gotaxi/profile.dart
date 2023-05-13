import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../functions/functions.dart';
import '../pages/NavigatorPages/editprofile.dart';
import '../styles/styles.dart';
import '../widgetgotaxi/Text.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String? name, email;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    name = userDetails['name'];
    email = userDetails['email'];
  }

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
                  height: 310.h,
                  width: double.infinity,
                  // color: Colors.amber,
                  child: Stack(
                    children: [
                      Container(
                        height: 255.h,
                        width: double.infinity,
                        color: primaryColor,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 35, left: 25, right: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  text(
                                    title: "Profile",
                                    size: 25,
                                    Colour: whitetextColor,
                                    bold: true,
                                  ),
                                  IconButton(
                                      onPressed: () async {
                                        var val = await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const EditProfile()));
                                        if (val) {
                                          setState(() {});
                                        }
                                      },
                                      icon: Icon(
                                        Icons.edit,
                                        color: white,
                                      ))
                                ],
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: SizedBox(
                                        height: 80.h,
                                        child: CircleAvatar(
                                            radius: 50,
                                            backgroundColor: whitetextColor,
                                            child: CircleAvatar(
                                                radius: 35,
                                                backgroundColor: whitetextColor,
                                                backgroundImage: NetworkImage(
                                                    "${userDetails['profile_picture']}",
                                                    scale: 1)))),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      text(
                                        title: name.toString().toUpperCase(),
                                        size: 15,
                                        Colour: whitetextColor,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: white,
                                          ),
                                          SizedBox(
                                            width: 3.w,
                                          ),
                                          text(
                                            title: "4.5",
                                            size: 15,
                                            Colour: white,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                // height: 80.h,
                                width: 160.w,
                                decoration: BoxDecoration(
                                    color: white,
                                    borderRadius: BorderRadius.circular(5),
                                    //color:  Color(0xFF66BB6A),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.8),
                                        blurRadius: 3.0,
                                      ),
                                    ]),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          text(title: "Earned Today", size: 13),
                                          Container(
                                            height: 25.h,
                                            width: 25.w,
                                            decoration: BoxDecoration(
                                                color: primaryColor
                                                    .withOpacity(0.5),
                                                shape: BoxShape.circle),
                                            child: Icon(
                                              Icons.money,
                                              size: 12,
                                              color: primaryColor,
                                            ),
                                            // child: Image.asset(
                                            //   "assets/img/cash.png",
                                            //   height: 30.h,
                                            //   width: 30.w,
                                            // ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 8.h,
                                      ),
                                      text(
                                        title: "\$100",
                                        size: 18,
                                        bold: true,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                // height: 80.h,
                                width: 160.w,
                                decoration: BoxDecoration(
                                    color: white,
                                    borderRadius: BorderRadius.circular(5),
                                    //color:  Color(0xFF66BB6A),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.8),
                                        blurRadius: 3.0,
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
                                          text(title: "Total Trips", size: 15),
                                          Container(
                                            height: 25.h,
                                            width: 25.w,
                                            decoration: BoxDecoration(
                                                color: primaryColor
                                                    .withOpacity(0.5),
                                                shape: BoxShape.circle),
                                            child: Image.asset(
                                              "assets/img/car1.jpg",
                                              height: 30.h,
                                              width: 30.w,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 8.h,
                                      ),
                                      text(
                                        title: "22",
                                        size: 18,
                                        bold: true,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      // height: 80.h,
                      width: 160.w,
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(5),
                          //color:  Color(0xFF66BB6A),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.8),
                              blurRadius: 3.0,
                            ),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                text(title: "Total Distance", size: 13),
                                Container(
                                  height: 25.h,
                                  width: 25.w,
                                  decoration: BoxDecoration(
                                      color: primaryColor.withOpacity(0.5),
                                      shape: BoxShape.circle),
                                  child: Icon(
                                    Icons.linear_scale_sharp,
                                    size: 12,
                                    color: primaryColor,
                                  ),
                                  // child: Image.asset(
                                  //   "assets/img/cash.png",
                                  //   height: 30.h,
                                  //   width: 30.w,
                                  // ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            text(
                              title: "\$100",
                              size: 18,
                              bold: true,
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      // height: 80.h,
                      width: 160.w,
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(5),
                          //color:  Color(0xFF66BB6A),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.8),
                              blurRadius: 3.0,
                            ),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                text(title: "Time Online", size: 15),
                                Container(
                                    height: 25.h,
                                    width: 25.w,
                                    decoration: BoxDecoration(
                                        color: primaryColor.withOpacity(0.5),
                                        shape: BoxShape.circle),
                                    child: Icon(
                                      Icons.timelapse_sharp,
                                      color: primaryColor,
                                      size: 12,
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            text(
                              title: "22",
                              size: 18,
                              bold: true,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  // height: 320.h,
                  width: 350.w,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 8.h,
                        ),
                        text(
                          title: "My Ongoing Trips",
                          size: 15,
                          bold: true,
                        ),
                        Row(
                          children: [
                            SizedBox(
                                height: 80.h,
                                width: 75.w,
                                child: CircleAvatar(
                                  radius: 70,
                                  backgroundColor: whitetextColor,
                                  child: CircleAvatar(
                                      radius: 35,
                                      backgroundColor: whitetextColor,
                                      backgroundImage: const AssetImage(
                                          'assets/img/person.png')),
                                )),
                            SizedBox(
                              width: 10.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                text(title: "Driver abc", size: 15),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: primaryColor,
                                    ),
                                    SizedBox(
                                      width: 3.w,
                                    ),
                                    text(title: "4.5", size: 15),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Divider(
                          color: lightbackground,
                          thickness: 3,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.call,
                                  color: primaryColor,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                text(title: "Call", size: 13),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.chat,
                                  color: primaryColor,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                text(title: "Chat", size: 13),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.cancel_outlined,
                                  color: primaryColor,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                text(title: "Cancel", size: 13),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  // height: 80.h,
                  width: 350.w,
                  decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(5),
                      //color:  Color(0xFF66BB6A),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.8),
                          blurRadius: 3.0,
                        ),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text(
                          title: "My Ratings",
                          size: 20,
                          bold: true,
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 120.w,
                              child: Column(
                                children: [
                                  text(
                                    title: "4.5",
                                    size: 50,
                                    bold: true,
                                  ),
                                  SizedBox(
                                    height: 8.h,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: primaryColor,
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 20,
                                        color: primaryColor,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 20,
                                        color: primaryColor,
                                      ),
                                      // Icon(
                                      //   size: 20,
                                      //   Icons.star,
                                      //   color: primaryColor,
                                      // ),
                                      Icon(
                                        Icons.star_outline,
                                        size: 20,
                                        color: primaryColor,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8.h,
                                  ),
                                  text(
                                    title: "405 Average Ratings",
                                    size: 10,
                                    Colour: lighttextcolor,
                                  ),
                                  SizedBox(
                                    height: 8.h,
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                rating(
                                  num: 1,
                                ),

                                rating(num: 2),

                                rating(num: 3),

                                rating(num: 4),

                                rating(num: 5),

                                // LinearProgressIndicator(
                                //   backgroundColor: Colors.cyanAccent,
                                // valueColor:
                                //     AlwaysStoppedAnimation<Color>(Colors.red),
                                //   value: 0.5,
                                // ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class rating extends StatelessWidget {
  int num;
  rating({
    required this.num,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Icon(
        //   size: 18.h,
        //   Icons.star,
        //   color: primaryColor,
        // ),
        SizedBox(
          width: 2.w,
        ),
        text(title: "$num", size: 12),
        SizedBox(
          width: 5.w,
        ),
        SizedBox(
          height: 10.h,
          width: 100.w,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: LinearProgressIndicator(
              value: 0.8,
              backgroundColor: primaryColor.withOpacity(0.5),
              valueColor: AlwaysStoppedAnimation<Color>(primaryColor),
            ),
          ),
        ),
        SizedBox(
          width: 5.w,
        ),
        text(title: "80", size: 10)
      ],
    );
  }
}
