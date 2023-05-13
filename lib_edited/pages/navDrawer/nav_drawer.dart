import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tagyourtaxi_driver/functions/functions.dart';
import 'package:tagyourtaxi_driver/pages/onTripPage/map_page.dart';
import 'package:tagyourtaxi_driver/styles/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widgetgotaxi/Text.dart';

class NavDrawer extends StatefulWidget {
  const NavDrawer({Key? key}) : super(key: key);
  @override
  State<NavDrawer> createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      color: page,
      width: media.width * 0.8,
      child: Directionality(
        textDirection: (languageDirection == 'rtl')
            ? TextDirection.rtl
            : TextDirection.ltr,
        child: Drawer(
            child: SizedBox(
          width: media.width * 0.7,
          child: SingleChildScrollView(
            child: Container(
              color: backgroundColor,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 15),
                      child: buildHeader(
                        context,
                      ),
                    ),
                    buildMenuItems(context),
                    // SizedBox(
                    //   width: media.width * 0.7,
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.start,
                    //     children: [
                    //       Container(
                    //         height: media.width * 0.2,
                    //         width: media.width * 0.2,
                    //         decoration: BoxDecoration(
                    //             borderRadius: BorderRadius.circular(10),
                    //             image: DecorationImage(
                    //                 image: NetworkImage(
                    //                     userDetails['profile_picture']),
                    //                 fit: BoxFit.cover)),
                    //       ),
                    //       SizedBox(
                    //         width: media.width * 0.025,
                    //       ),
                    //       Column(
                    //         crossAxisAlignment: CrossAxisAlignment.start,
                    //         children: [
                    //           SizedBox(
                    //             width: media.width * 0.45,
                    //             child: Row(
                    //               mainAxisAlignment:
                    //                   MainAxisAlignment.spaceBetween,
                    //               children: [
                    //                 SizedBox(
                    //                   width: media.width * 0.3,
                    //                   child: Text(
                    //                     userDetails['name'],
                    //                     style: GoogleFonts.roboto(
                    //                         fontSize: media.width * eighteen,
                    //                         color: textColor,
                    //                         fontWeight: FontWeight.w600),
                    //                     maxLines: 1,
                    //                   ),
                    //                 ),
                    //                 InkWell(
                    //                   onTap: () async {
                    //                     var val = await Navigator.push(
                    //                         context,
                    //                         MaterialPageRoute(
                    //                             builder: (context) =>
                    //                                  EditProfile()));
                    //                     if (val) {
                    //                       setState(() {});
                    //                     }
                    //                   },
                    //                   child: Icon(
                    //                     Icons.edit,
                    //                     size: media.width * eighteen,
                    //                   ),
                    //                 )
                    //               ],
                    //             ),
                    //           ),
                    //           SizedBox(
                    //             height: media.width * 0.01,
                    //           ),
                    //           SizedBox(
                    //             width: media.width * 0.45,
                    //             child: Text(
                    //               userDetails['email'],
                    //               style: GoogleFonts.roboto(
                    //                   fontSize: media.width * fourteen,
                    //                   color: textColor),
                    //               maxLines: 1,
                    //             ),
                    //           )
                    //         ],
                    //       )
                    //     ],
                    //   ),
                    // ),

                    // Container(
                    //   padding: EdgeInsets.only(top: media.width * 0.05),
                    //   width: media.width * 0.7,
                    //   child: Column(
                    //     children: [
                    //       //notification
                    //       ValueListenableBuilder(
                    //           valueListenable: valueNotifierNotification.value,
                    //           builder: (context, value, child) {
                    //             return InkWell(
                    //               onTap: () {
                    //                 Navigator.push(
                    //                     context,
                    //                     MaterialPageRoute(
                    //                         builder: (context) =>
                    //                             const NotificationPage()));
                    //                 setState(() {
                    //                   userDetails['notifications_count'] = 0;
                    //                 });
                    //               },
                    //               child: Row(
                    //                 mainAxisAlignment:
                    //                     MainAxisAlignment.spaceBetween,
                    //                 children: [
                    //                   Container(
                    //                     padding:
                    //                         EdgeInsets.all(media.width * 0.025),
                    //                     child: Row(
                    //                       children: [
                    //                         Image.asset(
                    //                           'assets/images/notification.png',
                    //                           fit: BoxFit.contain,
                    //                           width: media.width * 0.075,
                    //                         ),
                    //                         SizedBox(
                    //                           width: media.width * 0.025,
                    //                         ),
                    //                         SizedBox(
                    //                           width: media.width * 0.49,
                    //                           child: Text(
                    //                             languages[choosenLanguage]
                    //                                     ['text_notification']
                    //                                 .toString(),
                    //                             overflow: TextOverflow.ellipsis,
                    //                             style: GoogleFonts.roboto(
                    //                                 fontSize:
                    //                                     media.width * sixteen,
                    //                                 color: textColor),
                    //                           ),
                    //                         )
                    //                       ],
                    //                     ),
                    //                   ),
                    //                   (userDetails['notifications_count'] == 0)
                    //                       ? Container()
                    //                       : Container(
                    //                           height: 20,
                    //                           width: 20,
                    //                           alignment: Alignment.center,
                    //                           decoration: BoxDecoration(
                    //                             shape: BoxShape.circle,
                    //                             color: buttonColor,
                    //                           ),
                    //                           child: Text(
                    //                             userDetails[
                    //                                     'notifications_count']
                    //                                 .toString(),
                    //                             style: GoogleFonts.roboto(
                    //                                 fontSize:
                    //                                     media.width * fourteen,
                    //                                 color: buttonText),
                    //                           ),
                    //                         )
                    //                 ],
                    //               ),
                    //             );
                    //           }),
                    //       //history
                    //       InkWell(
                    //         onTap: () {
                    //           Navigator.push(
                    //               context,
                    //               MaterialPageRoute(
                    //                   builder: (context) => const History()));
                    //         },
                    //         child: Container(
                    //           padding: EdgeInsets.all(media.width * 0.025),
                    //           child: Row(
                    //             children: [
                    //               Image.asset(
                    //                 'assets/images/history.png',
                    //                 fit: BoxFit.contain,
                    //                 width: media.width * 0.075,
                    //               ),
                    //               SizedBox(
                    //                 width: media.width * 0.025,
                    //               ),
                    //               SizedBox(
                    //                 width: media.width * 0.55,
                    //                 child: Text(
                    //                   languages[choosenLanguage]
                    //                       ['text_enable_history'],
                    //                   overflow: TextOverflow.ellipsis,
                    //                   style: GoogleFonts.roboto(
                    //                       fontSize: media.width * sixteen,
                    //                       color: textColor),
                    //                 ),
                    //               )
                    //             ],
                    //           ),
                    //         ),
                    //       ),

                    //       //wallet page
                    //       InkWell(
                    //         onTap: () {
                    //           Navigator.push(
                    //               context,
                    //               MaterialPageRoute(
                    //                   builder: (context) =>
                    //                       const WalletPage()));
                    //         },
                    //         child: Container(
                    //           padding: EdgeInsets.all(media.width * 0.025),
                    //           child: Row(
                    //             children: [
                    //               Image.asset(
                    //                 'assets/images/walletIcon.png',
                    //                 fit: BoxFit.contain,
                    //                 width: media.width * 0.075,
                    //               ),
                    //               SizedBox(
                    //                 width: media.width * 0.025,
                    //               ),
                    //               SizedBox(
                    //                 width: media.width * 0.55,
                    //                 child: Text(
                    //                   languages[choosenLanguage]
                    //                       ['text_enable_wallet'],
                    //                   overflow: TextOverflow.ellipsis,
                    //                   style: GoogleFonts.roboto(
                    //                       fontSize: media.width * sixteen,
                    //                       color: textColor),
                    //                 ),
                    //               )
                    //             ],
                    //           ),
                    //         ),
                    //       ),

                    //       //referral page
                    //       InkWell(
                    //         onTap: () {
                    //           Navigator.push(
                    //               context,
                    //               MaterialPageRoute(
                    //                   builder: (context) =>
                    //                       const ReferralPage()));
                    //         },
                    //         child: Container(
                    //           padding: EdgeInsets.all(media.width * 0.025),
                    //           child: Row(
                    //             children: [
                    //               Image.asset(
                    //                 'assets/images/referral.png',
                    //                 fit: BoxFit.contain,
                    //                 width: media.width * 0.075,
                    //               ),
                    //               SizedBox(
                    //                 width: media.width * 0.025,
                    //               ),
                    //               SizedBox(
                    //                 width: media.width * 0.55,
                    //                 child: Text(
                    //                   languages[choosenLanguage]
                    //                       ['text_enable_referal'],
                    //                   overflow: TextOverflow.ellipsis,
                    //                   style: GoogleFonts.roboto(
                    //                       fontSize: media.width * sixteen,
                    //                       color: textColor),
                    //                 ),
                    //               )
                    //             ],
                    //           ),
                    //         ),
                    //       ),

                    //       //favorite
                    //       InkWell(
                    //         onTap: () {
                    //           Navigator.push(
                    //               context,
                    //               MaterialPageRoute(
                    //                   builder: (context) => const Favorite()));
                    //         },
                    //         child: Container(
                    //           padding: EdgeInsets.all(media.width * 0.025),
                    //           child: Row(
                    //             children: [
                    //               Icon(
                    //                 Icons.favorite_border,
                    //                 size: media.width * 0.075,
                    //               ),
                    //               SizedBox(
                    //                 width: media.width * 0.025,
                    //               ),
                    //               SizedBox(
                    //                 width: media.width * 0.55,
                    //                 child: Text(
                    //                   languages[choosenLanguage]
                    //                       ['text_favourites'],
                    //                   overflow: TextOverflow.ellipsis,
                    //                   style: GoogleFonts.roboto(
                    //                       fontSize: media.width * sixteen,
                    //                       color: textColor),
                    //                 ),
                    //               )
                    //             ],
                    //           ),
                    //         ),
                    //       ),

                    //       //faq
                    //       InkWell(
                    //         onTap: () {
                    //           Navigator.push(
                    //               context,
                    //               MaterialPageRoute(
                    //                   builder: (context) => const Faq()));
                    //         },
                    //         child: Container(
                    //           padding: EdgeInsets.all(media.width * 0.025),
                    //           child: Row(
                    //             children: [
                    //               Image.asset(
                    //                 'assets/images/faq.png',
                    //                 fit: BoxFit.contain,
                    //                 width: media.width * 0.075,
                    //               ),
                    //               SizedBox(
                    //                 width: media.width * 0.025,
                    //               ),
                    //               SizedBox(
                    //                 width: media.width * 0.55,
                    //                 child: Text(
                    //                   languages[choosenLanguage]['text_faq'],
                    //                   overflow: TextOverflow.ellipsis,
                    //                   style: GoogleFonts.roboto(
                    //                       fontSize: media.width * sixteen,
                    //                       color: textColor),
                    //                 ),
                    //               )
                    //             ],
                    //           ),
                    //         ),
                    //       ),

                    //       //sos
                    //       InkWell(
                    //         onTap: () async {
                    //           var nav = await Navigator.push(
                    //               context,
                    //               MaterialPageRoute(
                    //                   builder: (context) => const Sos()));
                    //           if (nav) {
                    //             setState(() {});
                    //           }
                    //         },
                    //         child: Container(
                    //           padding: EdgeInsets.all(media.width * 0.025),
                    //           child: Row(
                    //             children: [
                    //               Image.asset(
                    //                 'assets/images/sos.png',
                    //                 fit: BoxFit.contain,
                    //                 width: media.width * 0.075,
                    //               ),
                    //               SizedBox(
                    //                 width: media.width * 0.025,
                    //               ),
                    //               SizedBox(
                    //                 width: media.width * 0.55,
                    //                 child: Text(
                    //                   languages[choosenLanguage]['text_sos'],
                    //                   overflow: TextOverflow.ellipsis,
                    //                   style: GoogleFonts.roboto(
                    //                       fontSize: media.width * sixteen,
                    //                       color: textColor),
                    //                 ),
                    //               )
                    //             ],
                    //           ),
                    //         ),
                    //       ),

                    //       //select language
                    //       InkWell(
                    //         onTap: () async {
                    //           var nav = await Navigator.push(
                    //               context,
                    //               MaterialPageRoute(
                    //                   builder: (context) =>
                    //                       const SelectLanguage()));
                    //           if (nav) {
                    //             setState(() {});
                    //           }
                    //         },
                    //         child: Container(
                    //           padding: EdgeInsets.all(media.width * 0.025),
                    //           child: Row(
                    //             children: [
                    //               Image.asset(
                    //                 'assets/images/changeLanguage.png',
                    //                 fit: BoxFit.contain,
                    //                 width: media.width * 0.075,
                    //               ),
                    //               SizedBox(
                    //                 width: media.width * 0.025,
                    //               ),
                    //               SizedBox(
                    //                 width: media.width * 0.55,
                    //                 child: Text(
                    //                   languages[choosenLanguage]
                    //                       ['text_change_language'],
                    //                   overflow: TextOverflow.ellipsis,
                    //                   style: GoogleFonts.roboto(
                    //                       fontSize: media.width * sixteen,
                    //                       color: textColor),
                    //                 ),
                    //               )
                    //             ],
                    //           ),
                    //         ),
                    //       ),
                    //       //make complaints
                    //       InkWell(
                    //         onTap: () async {
                    //           var nav = await Navigator.push(
                    //               context,
                    //               MaterialPageRoute(
                    //                   builder: (context) => MakeComplaint(
                    //                         fromPage: 0,
                    //                       )));
                    //           if (nav) {
                    //             setState(() {});
                    //           }
                    //         },
                    //         child: Container(
                    //           padding: EdgeInsets.all(media.width * 0.025),
                    //           child: Row(
                    //             children: [
                    //               Image.asset(
                    //                 'assets/images/makecomplaint.png',
                    //                 fit: BoxFit.contain,
                    //                 width: media.width * 0.075,
                    //               ),
                    //               SizedBox(
                    //                 width: media.width * 0.025,
                    //               ),
                    //               SizedBox(
                    //                 width: media.width * 0.55,
                    //                 child: Text(
                    //                   languages[choosenLanguage]
                    //                       ['text_make_complaints'],
                    //                   overflow: TextOverflow.ellipsis,
                    //                   style: GoogleFonts.roboto(
                    //                       fontSize: media.width * sixteen,
                    //                       color: textColor),
                    //                 ),
                    //               )
                    //             ],
                    //           ),
                    //         ),
                    //       ),
                    //       //about
                    //       InkWell(
                    //         onTap: () {
                    //           Navigator.push(
                    //               context,
                    //               MaterialPageRoute(
                    //                   builder: (context) => const About()));
                    //         },
                    //         child: Container(
                    //           padding: EdgeInsets.all(media.width * 0.025),
                    //           child: Row(
                    //             children: [
                    //               Icon(
                    //                 Icons.info_outline,
                    //                 size: media.width * 0.075,
                    //               ),
                    //               SizedBox(
                    //                 width: media.width * 0.025,
                    //               ),
                    //               SizedBox(
                    //                 width: media.width * 0.55,
                    //                 child: Text(
                    //                   languages[choosenLanguage]['text_about'],
                    //                   overflow: TextOverflow.ellipsis,
                    //                   style: GoogleFonts.roboto(
                    //                       fontSize: media.width * sixteen,
                    //                       color: textColor),
                    //                 ),
                    //               )
                    //             ],
                    //           ),
                    //         ),
                    //       ),

                    //       //delete account
                    //       InkWell(
                    //         onTap: () {
                    //           setState(() {
                    //             deleteAccount = true;
                    //           });
                    //           valueNotifierHome.incrementNotifier();
                    //           Navigator.pop(context);
                    //         },
                    //         child: Container(
                    //           padding: EdgeInsets.all(media.width * 0.025),
                    //           child: Row(
                    //             children: [
                    //               Icon(
                    //                 Icons.delete_forever,
                    //                 size: media.width * 0.075,
                    //               ),
                    //               SizedBox(
                    //                 width: media.width * 0.025,
                    //               ),
                    //               SizedBox(
                    //                 width: media.width * 0.55,
                    //                 child: Text(
                    //                   languages[choosenLanguage]
                    //                       ['text_delete_account'],
                    //                   overflow: TextOverflow.ellipsis,
                    //                   style: GoogleFonts.roboto(
                    //                       fontSize: media.width * sixteen,
                    //                       color: textColor),
                    //                 ),
                    //               )
                    //             ],
                    //           ),
                    //         ),
                    //       ),

                    //       //logout
                    //       InkWell(
                    //         onTap: () {
                    //           setState(() {
                    //             logout = true;
                    //           });
                    //           valueNotifierHome.incrementNotifier();
                    //           Navigator.pop(context);
                    //         },
                    //         child: Container(
                    //           padding: EdgeInsets.all(media.width * 0.025),
                    //           child: Row(
                    //             children: [
                    //               Image.asset(
                    //                 'assets/images/logout.png',
                    //                 fit: BoxFit.contain,
                    //                 width: media.width * 0.075,
                    //               ),
                    //               SizedBox(
                    //                 width: media.width * 0.025,
                    //               ),
                    //               SizedBox(
                    //                 width: media.width * 0.55,
                    //                 child: Text(
                    //                   languages[choosenLanguage]['text_logout'],
                    //                   overflow: TextOverflow.ellipsis,
                    //                   style: GoogleFonts.roboto(
                    //                       fontSize: media.width * sixteen,
                    //                       color: textColor),
                    //                 ),
                    //               )
                    //             ],
                    //           ),
                    //         ),
                    //       )
                    //     ],
                    //   ),
                    // )
                  ]),
            ),
          ),
        )),
      ),
    );
  }

  Widget buildMenuItems(BuildContext context) => Container(
        child: Wrap(
          // runhacing: 16,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all<double>(0),
                backgroundColor:
                    MaterialStateProperty.all<Color>(whitetextColor),
                overlayColor: MaterialStateProperty.all<Color>(
                  primaryColor.withOpacity(0.3),
                ),
              ),
              onPressed: () {
                print("main");
                Navigator.pop(context);
                // Navigator.pushAndRemoveUntil(
                //     context,
                //     MaterialPageRoute(builder: (context) => const Maps()),
                //     (route) => false);
              },
              child: ListTile(
                contentPadding: const EdgeInsets.only(left: 10.0, right: 0.0),
                leading: Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: SvgPicture.asset(
                    "assets/svg/home.svg",
                    color: black,
                  ),
                ),
                title: Transform.translate(
                  offset: const Offset(-24, 0),
                  child: Text('Home',
                      style: TextStyle(
                          fontSize: 12,
                          color: textcolor,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all<double>(0),
                backgroundColor:
                    MaterialStateProperty.all<Color>(whitetextColor),
                overlayColor: MaterialStateProperty.all<Color>(
                  primaryColor.withOpacity(0.3),
                ),
              ),
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => const Favorite()));
              },
              child: ListTile(
                contentPadding: const EdgeInsets.only(left: 10.0, right: 0.0),
                // leading:
                //      Icon(Icons.calendar_month_outlined, color: black),
                leading: Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: SvgPicture.asset(
                    "assets/svg/location.svg",
                    color: black,
                  ),
                ),
                title: Transform.translate(
                  offset: const Offset(-24, 0),
                  child: Text('Address',
                      style: TextStyle(
                          fontSize: 12,
                          color: textcolor,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all<double>(0),
                backgroundColor:
                    MaterialStateProperty.all<Color>(whitetextColor),
                overlayColor: MaterialStateProperty.all<Color>(
                  primaryColor.withOpacity(0.3),
                ),
              ),
              onPressed: () async {
                // var val = await Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const EditProfile()));
                // if (val) {
                //   setState(() {});
                // }
              },
              child: ListTile(
                contentPadding: const EdgeInsets.only(left: 10.0, right: 0.0),
                // leading:  Icon(Icons.medication_outlined, color: black),
                leading: Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: SvgPicture.asset(
                    "assets/svg/profile.svg",
                    color: black,
                  ),
                ),
                title: Transform.translate(
                  offset: const Offset(-24, 0),
                  child: Text('Profile',
                      style: TextStyle(
                          fontSize: 12,
                          color: textcolor,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all<double>(0),
                backgroundColor:
                    MaterialStateProperty.all<Color>(whitetextColor),
                overlayColor: MaterialStateProperty.all<Color>(
                  primaryColor.withOpacity(0.3),
                ),
              ),
              onPressed: () async {
                // var val = await Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const NotificationPage()));
                // if (val) {
                //   setState(() {});
                // }
              },
              child: ListTile(
                contentPadding: const EdgeInsets.only(left: 10.0, right: 0.0),
                // leading:  Icon(Icons.medication_outlined, color: black),
                leading: Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Image.asset(
                    'assets/images/notification.png',
                    fit: BoxFit.contain,
                    width: 15.h,
                  ),
                ),
                title: Transform.translate(
                  offset: const Offset(-24, 0),
                  child: ValueListenableBuilder(
                      valueListenable: valueNotifierNotification.value,
                      builder: (context, value, child) {
                        return InkWell(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) =>
                            //             const NotificationPage()));
                            // setState(() {
                            //   userDetails['notifications_count'] = 0;
                            // });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                  width: 200.h,
                                  child: Text('Notifications',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: textcolor,
                                          fontWeight: FontWeight.bold))),
                              (userDetails['notifications_count'] == 0)
                                  ? Container()
                                  : Container()
                            ],
                          ),
                        );
                      }),
                ),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all<double>(0),
                backgroundColor:
                    MaterialStateProperty.all<Color>(whitetextColor),
                overlayColor: MaterialStateProperty.all<Color>(
                  primaryColor.withOpacity(0.3),
                ),
              ),
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const WalletPage()));
              },
              child: ListTile(
                contentPadding: const EdgeInsets.only(left: 10.0, right: 0.0),
                // leading:  Icon(Icons.monitor_heart, color: black),
                leading: Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: SvgPicture.asset(
                    "assets/svg/wallet.svg",
                    color: black,
                  ),
                ),
                title: Transform.translate(
                  offset: const Offset(-24, 0),
                  child: Text('Wallet',
                      style: TextStyle(
                          fontSize: 12,
                          color: textcolor,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all<double>(0),
                backgroundColor:
                    MaterialStateProperty.all<Color>(whitetextColor),
                overlayColor: MaterialStateProperty.all<Color>(
                  primaryColor.withOpacity(0.3),
                ),
              ),
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => const History()));
              },
              child: ListTile(
                contentPadding: const EdgeInsets.only(left: 10.0, right: 0.0),
                leading: Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: SvgPicture.asset("assets/svg/car.svg"),
                ),
                title: Transform.translate(
                  offset: const Offset(-24, 0),
                  child: Text('My Trips',
                      style: TextStyle(
                          fontSize: 12,
                          color: textcolor,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            // ElevatedButton(
            //   style: ButtonStyle(
            //     elevation: MaterialStateProperty.all<double>(0),
            //     backgroundColor:
            //         MaterialStateProperty.all<Color>(whitetextColor),
            //     overlayColor: MaterialStateProperty.all<Color>(
            //       primaryColor.withOpacity(0.3),
            //     ),
            //   ),
            //   onPressed: () {},
            //   child: ListTile(
            //     contentPadding: const EdgeInsets.only(left: 10.0, right: 0.0),
            //     // leading:  Icon(Icons.add, color: black),
            //     leading: Padding(
            //       padding: const EdgeInsets.only(top: 4),
            //       child: SvgPicture.asset(
            //         "assets/svg/lock.svg",
            //         color: black,
            //       ),
            //     ),
            //     title: Transform.translate(
            //       offset: const Offset(-24, 0),
            //       child: Text('Change Password',
            //           style: TextStyle(
            //               fontSize: 12,
            //               color: textcolor,
            //               fontWeight: FontWeight.bold)),
            //     ),
            //   ),
            // ),

            // ElevatedButton(
            //   style: ButtonStyle(
            //     elevation: MaterialStateProperty.all<double>(0),
            //     backgroundColor:
            //         MaterialStateProperty.all<Color>(whitetextColor),
            //     overlayColor: MaterialStateProperty.all<Color>(
            //       primaryColor.withOpacity(0.3),
            //     ),
            //   ),
            //   onPressed: () {
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => const Rewards()));
            //   },
            //   child: ListTile(
            //     contentPadding: const EdgeInsets.only(left: 10.0, right: 0.0),
            //     // leading:  Icon(Icons.share, color: black),
            //     leading: Padding(
            //       padding: const EdgeInsets.only(top: 4),
            //       child: SvgPicture.asset(
            //         "assets/svg/gift.svg",
            //         color: black,
            //       ),
            //     ),
            //     title: Transform.translate(
            //       offset: const Offset(-24, 0),
            //       child: Text('Rewards',
            //           style: TextStyle(
            //               fontSize: 12,
            //               color: textcolor,
            //               fontWeight: FontWeight.bold)),
            //     ),
            //   ),
            // ),

            // ElevatedButton(
            //   style: ButtonStyle(
            //     elevation: MaterialStateProperty.all<double>(0),
            //     backgroundColor:
            //         MaterialStateProperty.all<Color>(whitetextColor),
            //     overlayColor: MaterialStateProperty.all<Color>(
            //       primaryColor.withOpacity(0.3),
            //     ),
            //   ),
            //   onPressed: () {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (context) => const Refferaljoin()));
            //   },
            //   child: ListTile(
            //     contentPadding: const EdgeInsets.only(left: 10.0, right: 0.0),
            //     leading: Padding(
            //       padding: const EdgeInsets.only(top: 4),
            //       child: SvgPicture.asset(
            //         "assets/svg/send.svg",
            //         color: black,
            //       ),
            //     ),
            //     title: Transform.translate(
            //       offset: const Offset(-24, 0),
            //       child: Text('Refferals',
            //           style: TextStyle(
            //               fontSize: 12,
            //               color: textcolor,
            //               fontWeight: FontWeight.bold)),
            //     ),
            //   ),
            // ),

            ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all<double>(0),
                backgroundColor:
                    MaterialStateProperty.all<Color>(whitetextColor),
                overlayColor: MaterialStateProperty.all<Color>(
                  primaryColor.withOpacity(0.3),
                ),
              ),
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => const Faq()));
              },
              child: ListTile(
                contentPadding: const EdgeInsets.only(left: 10.0, right: 0.0),
                leading: Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Image.asset(
                    'assets/images/faq.png',
                    fit: BoxFit.contain,
                    width: 20.h,
                  ),
                ),
                title: Transform.translate(
                  offset: const Offset(-24, 0),
                  child: Text('FAQ',
                      style: TextStyle(
                          fontSize: 12,
                          color: textcolor,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all<double>(0),
                backgroundColor:
                    MaterialStateProperty.all<Color>(whitetextColor),
                overlayColor: MaterialStateProperty.all<Color>(
                  primaryColor.withOpacity(0.3),
                ),
              ),
              onPressed: () async {
                // var nav = await Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => const Sos()));
                // if (nav) {
                //   setState(() {});
                // }
              },
              child: ListTile(
                contentPadding: const EdgeInsets.only(left: 10.0, right: 0.0),
                leading: Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Image.asset(
                    'assets/images/sos.png',
                    fit: BoxFit.contain,
                    width: 20.h,
                  ),
                ),
                title: Transform.translate(
                  offset: const Offset(-24, 0),
                  child: Text('SOS',
                      style: TextStyle(
                          fontSize: 12,
                          color: textcolor,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            // ElevatedButton(
            //   style: ButtonStyle(
            //     elevation: MaterialStateProperty.all<double>(0),
            //     backgroundColor:
            //         MaterialStateProperty.all<Color>(whitetextColor),
            //     overlayColor: MaterialStateProperty.all<Color>(
            //       primaryColor.withOpacity(0.3),
            //     ),
            //   ),
            //   onPressed: () async {
            //     var nav = await Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (context) => const SelectLanguage()));
            //     if (nav) {
            //       setState(() {});
            //     }
            //   },
            //   child: ListTile(
            //     contentPadding: const EdgeInsets.only(left: 10.0, right: 0.0),
            //     leading: Padding(
            //       padding: const EdgeInsets.only(top: 6),
            //       child: Image.asset(
            //         'assets/images/changeLanguage.png',
            //         fit: BoxFit.contain,
            //         width: 20.h,
            //       ),
            //     ),
            //     title: Transform.translate(
            //       offset: const Offset(-24, 0),
            //       child: Text('Change Language',
            //           style: TextStyle(
            //               fontSize: 12,
            //               color: textcolor,
            //               fontWeight: FontWeight.bold)),
            //     ),
            //   ),
            // ),

            ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all<double>(0),
                backgroundColor:
                    MaterialStateProperty.all<Color>(whitetextColor),
                overlayColor: MaterialStateProperty.all<Color>(
                  primaryColor.withOpacity(0.3),
                ),
              ),
              onPressed: () async {
                // var nav = await Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => MakeComplaint(
                //               fromPage: 0,
                //             )));
                // if (nav) {
                //   setState(() {});
                // }
              },
              child: ListTile(
                contentPadding: const EdgeInsets.only(left: 10.0, right: 0.0),
                leading: Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Image.asset(
                    'assets/images/makecomplaint.png',
                    fit: BoxFit.contain,
                    width: 20.h,
                  ),
                ),
                title: Transform.translate(
                  offset: const Offset(-24, 0),
                  child: Text('Make Complaints',
                      style: TextStyle(
                          fontSize: 12,
                          color: textcolor,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all<double>(0),
                backgroundColor:
                    MaterialStateProperty.all<Color>(whitetextColor),
                overlayColor: MaterialStateProperty.all<Color>(
                  primaryColor.withOpacity(0.3),
                ),
              ),
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => const About()));
              },
              child: ListTile(
                contentPadding: const EdgeInsets.only(left: 10.0, right: 0.0),
                leading: Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Icon(Icons.info_outline, size: 20.h),
                ),
                title: Transform.translate(
                  offset: const Offset(-24, 0),
                  child: Text('About',
                      style: TextStyle(
                          fontSize: 12,
                          color: textcolor,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all<double>(0),
                backgroundColor:
                    MaterialStateProperty.all<Color>(whitetextColor),
                overlayColor: MaterialStateProperty.all<Color>(
                  primaryColor.withOpacity(0.3),
                ),
              ),
              onPressed: () {
                setState(() {
                  deleteAccount = true;
                });
                valueNotifierHome.incrementNotifier();
                Navigator.pop(context);
              },
              child: ListTile(
                contentPadding: const EdgeInsets.only(left: 10.0, right: 0.0),
                leading: Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Icon(
                    Icons.delete_forever,
                    size: 20.h,
                  ),
                ),
                title: Transform.translate(
                  offset: const Offset(-24, 0),
                  child: Text('Delete Account',
                      style: TextStyle(
                          fontSize: 12,
                          color: textcolor,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all<double>(0),
                backgroundColor:
                    MaterialStateProperty.all<Color>(whitetextColor),
                overlayColor: MaterialStateProperty.all<Color>(
                  primaryColor.withOpacity(0.3),
                ),
              ),
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const ReferralPage()));
              },
              child: ListTile(
                contentPadding: const EdgeInsets.only(left: 10.0, right: 0.0),
                leading: Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Image.asset(
                    'assets/images/referral.png',
                    fit: BoxFit.contain,
                    width: 20.h,
                  ),
                ),
                title: Transform.translate(
                  offset: const Offset(-24, 0),
                  child: Text('Invite your Friend',
                      style: TextStyle(
                          fontSize: 12,
                          color: textcolor,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all<double>(0),
                backgroundColor:
                    MaterialStateProperty.all<Color>(whitetextColor),
                overlayColor: MaterialStateProperty.all<Color>(
                  primaryColor.withOpacity(0.3),
                ),
              ),
              onPressed: () async {
                setState(() {
                  logout = true;
                });
                valueNotifierHome.incrementNotifier();
                Navigator.pop(context);
              },
              child: ListTile(
                contentPadding: const EdgeInsets.only(left: 10.0, right: 0.0),
                leading: Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: SvgPicture.asset(
                    "assets/svg/logout.svg",
                    color: black,
                  ),
                ),
                title: Transform.translate(
                  offset: const Offset(-24, 0),
                  child: Text('Logout',
                      style: TextStyle(
                          fontSize: 12,
                          color: textcolor,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ],
        ),
      );

  Widget buildHeader(BuildContext context) => Container(
        // color: primaryColor,
        // padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Column(
          children: [
            SizedBox(
              height: 40.h,
            ),
            Column(
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(
                          elevation: 5,
                          color: backgroundColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset(
                              "assets/svg/bx-menu-alt-left.svg",
                              height: 30,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        userDetails['name'] == null
                            ? text(
                                title: "Hello User",
                                size: 14,
                                bold: true,
                              )
                            : text(
                                title: "${userDetails['name']}",
                                size: 14,
                                bold: true,
                              ),
                        const SizedBox(
                          height: 5,
                        ),
                        userDetails['email'] == null
                            ? Container()
                            : text(
                                title: "${userDetails['email']}",
                                size: 11,
                              ),
                      ],
                    ),
                    SizedBox(
                        height: 80.h,
                        child: CircleAvatar(
                            radius: 50,
                            backgroundColor: backgroundColor,
                            child: CircleAvatar(
                                radius: 35,
                                backgroundColor: backgroundColor,
                                backgroundImage: NetworkImage(
                                    "${userDetails['profile_picture']}",
                                    scale: 1)))),
                  ],
                ),
                // SizedBox(height: MediaQuery.of(context).size.height * 0.005),
              ],
            ),
          ],
        ),
      );
}
