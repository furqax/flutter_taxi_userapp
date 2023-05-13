import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:intl/intl.dart';
import 'package:tagyourtaxi_driver/pages/navDrawer/nav_drawer.dart';

import '../../functions/functions.dart';
import '../../styles/styles.dart';
import '../../widgetgotaxi/Text.dart';
import '../../widgetgotaxi/custombotton.dart';
import 'map_page.dart';

class mainscreen extends StatefulWidget {
  const mainscreen({Key? key}) : super(key: key);

  @override
  State<mainscreen> createState() => _mainscreenState();
}

class _mainscreenState extends State<mainscreen> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    DateTime selectedDate = DateTime.now();
    String date = DateFormat("EEE, MMM dd").format(DateTime.now());

    String tdate = DateFormat("H: mm a").format(DateTime.now());
    String rdate = DateFormat("H: mm a")
        .format(DateTime.now().add(const Duration(minutes: 10)));
    //  HomeController controller = Get.find<HomeController>();
    GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        drawer: const NavDrawer(),
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  InkWell(
                      onTap: () {
                        scaffoldKey.currentState?.openDrawer();
                      },
                      child:
                          SvgPicture.asset("assets/svg/bx-menu-alt-left.svg")),
                  const SizedBox(
                    height: 15,
                  ),
                  Center(child: Image.asset("assets/img/banner.jpg")),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 80.h,
                            width: 80.w,
                            decoration: BoxDecoration(
                                color: lightbackground,
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(
                                child: Image.asset("assets/img/gifrcard.png")),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          text(
                            title: "Gift Card",
                            size: 12,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 80.h,
                            width: 80.w,
                            decoration: BoxDecoration(
                                color: lightbackground,
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(
                                child: Image.asset("assets/img/reward.png")),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          text(
                            title: "Rewards",
                            size: 12,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 80.h,
                            width: 80.w,
                            decoration: BoxDecoration(
                                color: lightbackground,
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(
                                child: Image.asset("assets/img/donate.png")),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          text(
                            title: "Donate",
                            size: 12,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 80.h,
                            width: 80.w,
                            decoration: BoxDecoration(
                                color: lightbackground,
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(
                                child: Image.asset("assets/img/wallet.png")),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          text(
                            title: "Wallets",
                            size: 12,
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  text(title: "Book a ride", bold: true, size: 15),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      height: 50.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: lightbackground,
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              // Get.to(( pickup()));
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Maps()));
                            },
                            child: SizedBox(
                              height: 50.h,
                              width: 250.w,
                              // color: Colors.amber,
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: null,
                                    icon: Icon(
                                      Icons.search,
                                      color: black,
                                    ),
                                  ),
                                  text(title: "Where to ?", size: 15),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              showModalBottomSheet<void>(
                                context: context,
                                builder: (BuildContext context) {
                                  return Container(
                                    color: backgroundColor,
                                    height: 250.h,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 15.h,
                                        ),
                                        text(
                                          title: "Schedule Ride",
                                          size: 18,
                                          bold: true,
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        const Divider(
                                          thickness: 1,
                                          color: Colors.grey,
                                        ),
                                        SizedBox(
                                          height: 15.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                showMyDatePicker(context);
                                              },
                                              child: text(
                                                title: date,
                                                size: 15,
                                                // bold: true,
                                              ),
                                            ),
                                            InkWell(
                                              onTap: () {
                                                showMyTimePicker(context);
                                              },
                                              child: Row(
                                                children: [
                                                  text(
                                                    title: tdate,
                                                    size: 15,
                                                    // bold: true,
                                                  ),
                                                  SizedBox(
                                                    width: 5.w,
                                                  ),
                                                  text(
                                                    title: "-",
                                                    size: 15,
                                                    // bold: true,
                                                  ),
                                                  SizedBox(
                                                    width: 5.w,
                                                  ),
                                                  text(
                                                    title: rdate,
                                                    size: 15,
                                                    // bold: true,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        const Divider(
                                          thickness: 1,
                                          color: Colors.grey,
                                        ),
                                        InkWell(
                                            onTap: () async {
                                              // print("aaaa$tdate");
                                              // print("aaaa$rdate");

                                              // Get.to(() => locationselect(
                                              //     focus: true,
                                              //     time: tdate.toString(),
                                              //     rtime: rdate.toString()));
                                            },
                                            child: submitButton(
                                                title: "Set Pick Up Time"))
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Container(
                                height: 40.h,
                                width: 100.w,
                                decoration: BoxDecoration(
                                    color: white,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.timer,
                                      color: primaryColor,
                                    ),
                                    text(title: "Now", size: 15),
                                    Icon(
                                      Icons.arrow_drop_down_outlined,
                                      color: black,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                  SizedBox(height: 20.h),
                  Container(
                    height: 50.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: lightbackground,
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: text(
                        title: "Select Drop Off",
                        Colour: primaryColor,
                        size: 15,
                        bold: true,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Column(
                    children: favAddress
                        .asMap()
                        .map((i, value) {
                          return MapEntry(
                              i,
                              InkWell(
                                // onTap: () async {
                                //   if (_pickaddress == true) {
                                //     setState(() {
                                //       addAutoFill.clear();
                                //       if (addressList.where((element) => element.id == 'pickup').isEmpty) {
                                //         addressList.add(AddressList(id: 'pickup', address: favAddress[i]['pick_address'], latlng: LatLng(favAddress[i]['pick_lat'], favAddress[i]['pick_lng'])));
                                //       } else {
                                //         addressList.firstWhere((element) => element.id == 'pickup').address = favAddress[i]['pick_address'];
                                //         addressList.firstWhere((element) => element.id == 'pickup').latlng = LatLng(favAddress[i]['pick_lat'], favAddress[i]['pick_lng']);
                                //       }
                                //       _controller?.moveCamera(CameraUpdate.newLatLngZoom(LatLng(favAddress[i]['pick_lat'], favAddress[i]['pick_lng']), 14.0));

                                //       _bottom = 0;
                                //     });
                                //   } else {
                                //     setState(() {
                                //       if (addressList.where((element) => element.id == 'drop').isEmpty) {
                                //         addressList.add(AddressList(id: 'drop', address: favAddress[i]['pick_address'], latlng: LatLng(favAddress[i]['pick_lat'], favAddress[i]['pick_lng'])));
                                //       } else {
                                //         addressList.firstWhere((element) => element.id == 'drop').address = favAddress[i]['pick_address'];
                                //         addressList.firstWhere((element) => element.id == 'drop').latlng = LatLng(favAddress[i]['pick_lat'], favAddress[i]['pick_lng']);
                                //       }
                                //       addAutoFill.clear();
                                //       _bottom = 0;
                                //     });
                                //     if (addressList.length == 2) {
                                //       Navigator.push(context, MaterialPageRoute(builder: (context) => BookingConfirmation()));

                                //       dropAddress = favAddress[i]['pick_address'];
                                //     }
                                //   }
                                // },

                                child: Container(
                                  width: media.width * 0.9,
                                  padding: EdgeInsets.only(
                                      top: media.width * 0.03,
                                      bottom: media.width * 0.03),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        favAddress[i]['address_name'],
                                        style: GoogleFonts.roboto(
                                            fontSize: media.width * fourteen,
                                            color: textColor),
                                      ),
                                      SizedBox(
                                        height: media.width * 0.03,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          (favAddress[i]['address_name'] ==
                                                  'Home')
                                              ? Image.asset(
                                                  'assets/images/home.png',
                                                  color: Colors.black,
                                                  width: media.width * 0.075,
                                                )
                                              : (favAddress[i]
                                                          ['address_name'] ==
                                                      'Work')
                                                  ? Image.asset(
                                                      'assets/images/briefcase.png',
                                                      color: Colors.black,
                                                      width:
                                                          media.width * 0.075,
                                                    )
                                                  : Image.asset(
                                                      'assets/images/navigation.png',
                                                      color: Colors.black,
                                                      width:
                                                          media.width * 0.075,
                                                    ),
                                          SizedBox(
                                            width: media.width * 0.8,
                                            child: Text(
                                              favAddress[i]['pick_address'],
                                              style: GoogleFonts.roboto(
                                                fontSize: media.width * twelve,
                                                color: textColor,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ));
                        })
                        .values
                        .toList(),
                  ),
                  ListTile(
                    contentPadding:
                        const EdgeInsets.only(left: 0.0, right: 0.0),
                    leading: Container(
                      height: 50.h,
                      width: 50.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: lightbackground,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.my_location,
                          color: primaryColor,
                        ),
                      ),
                    ),
                    title: Transform.translate(
                      offset: const Offset(-50, 0),
                      child: text(
                          title: "Choose a saved place", bold: true, size: 15),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: black,
                    ),
                    onTap: () {
                      // Get.to(() =>  Address());
                    },
                  ),
                  Divider(
                    color: lightbackground,
                    thickness: 2,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Center(child: Image.asset("assets/img/map.jpg")),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> showMyDatePicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),

      // initialDate: booking.value.bookingAt.add(Duration(days: 1)),
      // firstDate: DateTime.now().add(Duration(days: 1)),
      lastDate: DateTime(2200),
      // locale: Get.locale,
      builder: (context, child) {
        return Theme(
            data: Theme.of(context).copyWith(
                colorScheme: ColorScheme.light(
                  primary: primaryColor,
                  onSurface: const Color.fromARGB(255, 0, 0, 0),
                ),
                textTheme: TextTheme(
                  bodyLarge: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      color: textcolor),
                  titleMedium: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      color: textcolor),
                ),
                textButtonTheme: TextButtonThemeData(
                  style: TextButton.styleFrom(
                      foregroundColor: primaryColor,
                      textStyle: const TextStyle(
                          fontSize: 22, fontWeight: FontWeight.w500)),
                )),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: SizedBox(
                    height: 600,
                    width: 700,
                    child: child,
                  ),
                ),
              ],
            ));
      },
    );
    if (picked != null) {
      print("${picked.day}: ${picked.month}  ");
      showMyTimePicker(context);
      // booking.update((val) {
      //   val.bookingAt = DateTime(picked.year, picked.month, picked.day, val.bookingAt.hour, val.bookingAt.minute);

      // });
    }
  }

  Future<void> showMyTimePicker(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      builder: (context, child) {
        return Theme(
            data: Theme.of(context).copyWith(
                colorScheme: ColorScheme.light(
                    primary: primaryColor,
                    secondary: white,
                    onSurface: primaryColor),
                textButtonTheme: TextButtonThemeData(
                    style: TextButton.styleFrom(
                  foregroundColor: primaryColor,
                ))),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: SizedBox(
                    height: 500,
                    width: 700,
                    child: child,
                  ),
                ),
              ],
            ));
      },
    );
    if (picked != null) {
      print("${picked.hour}: ${picked.minute}  ");

      // booking.update((val) {
      //   val.bookingAt = DateTime(booking.value.bookingAt.year, booking.value.bookingAt.month, booking.value.bookingAt.day).add(Duration(minutes: picked.minute + picked.hour * 60));
      // });
    }
  }
}
