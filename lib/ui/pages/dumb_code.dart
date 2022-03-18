// MouseRegion(
  //   cursor: SystemMouseCursors.click,
  //   child: GestureDetector(
  //     onTap: () => showDialog<String>(
  //       context: context,
  //       builder: (BuildContext context) => Container(
  //         width: double.infinity,
  //         child: AlertDialog(
  //           titlePadding: EdgeInsets.only(
  //             top: 10.h,
  //           ),
  //           contentPadding: EdgeInsets.symmetric(
  //             vertical: 20.h,
  //           ),
  //           title: Container(
  //             margin: EdgeInsets.only(
  //               top: 48.h,
  //             ),
  //             child: Text(
  //               'Ganti Photo',
  //               style: blackTextStyle.copyWith(
  //                 fontWeight: bold,
  //                 fontSize: 18.sp,
  //               ),
  //               textAlign: TextAlign.center,
  //             ),
  //           ),
  //           content: Container(
  //             width: double.infinity,
  //             margin: EdgeInsets.symmetric(
  //               horizontal: 36,
  //             ),
  //             child: Column(
  //               children: [
  //                 Text(
  //                   "Upload Photo",
  //                   style: darkGreyTextStyle.copyWith(
  //                     fontSize: 13,
  //                     fontWeight: semibold,
  //                   ),
  //                 ),
  //                 SizedBox(
  //                   height: 12,
  //                 ),
  //                 CustomButton(
  //                   title: "Upload",
  //                   color: kPrimaryColor,
  //                   onPressed: () => showDialog(
  //                     context: context,
  //                     builder: (BuildContext context) {
  //                       return AlertDialog(
  //                         shape: RoundedRectangleBorder(
  //                           borderRadius:
  //                               BorderRadius.circular(8),
  //                         ),
  //                         title: Text(
  //                             'Please choose media to select'),
  //                         content: Container(
  //                           height: MediaQuery.of(context)
  //                                   .size
  //                                   .height /
  //                               6,
  //                           child: Column(
  //                             children: <Widget>[
  //                               TextButton(
  //                                 onPressed: () {
  //                                   Navigator.pop(context);
  //                                 },
  //                                 child: Row(
  //                                   children: <Widget>[
  //                                     Icon(Icons.image),
  //                                     Text('From Gallery'),
  //                                   ],
  //                                 ),
  //                               ),
  //                               TextButton(
  //                                 onPressed: () {
  //                                   Navigator.pop(context);
  //                                 },
  //                                 child: Row(
  //                                   children: <Widget>[
  //                                     Icon(Icons.camera),
  //                                     Text('From Camera'),
  //                                   ],
  //                                 ),
  //                               ),
  //                             ],
  //                           ),
  //                         ),
  //                       );
  //                     },
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //           actions: <Widget>[
  //             Container(
  //               width: 380.w,
  //               margin: EdgeInsets.only(
  //                 right: 36.w,
  //                 left: 36.w,
  //                 bottom: 48.h,
  //               ),
  //               child: Column(
  //                 children: [
  //                   CustomButtonBorder(
  //                     title: "Batalkan",
  //                     titleColor: kDarkGreyColor,
  //                     onPressed: () => Navigator.pop(context),
  //                     borderColor: kDarkGreyColor,
  //                     borderWidth: 2,
  //                     fontWeight: light,
  //                   ),
  //                   SizedBox(
  //                     height: 12.h,
  //                   ),
  //                   CustomButton(
  //                     title: 'Tetap Edit',
  //                     onPressed: () {},
  //                     color: kRedColor,
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           ],
  //           actionsPadding: EdgeInsets.only(
  //             bottom: 10.h,
  //           ),
  //           shape: RoundedRectangleBorder(
  //             borderRadius: BorderRadius.circular(18.r),
  //           ),
  //         ),
  //       ),
  //     ),
  //     child: Container(
  //       width: 42,
  //       height: 42,
  //       decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(8),
  //         color: kPrimaryColor,
  //       ),
  //       child: Icon(Icons.edit_outlined),
  //     ),
  //   ),
  // ),