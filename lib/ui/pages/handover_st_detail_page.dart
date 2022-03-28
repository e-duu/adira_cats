import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_drawer.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:adira_cats/ui/widgets/custom_text_informasi_detail.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';

class HandoverStDetailPage extends StatelessWidget {
      final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

      HandoverStDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// NOTE: NAVBAR
    Widget navbar() {
      return Container(
        child: CustomNavbar(
          text: "Serah Terima ST",
           preffixWidget: GestureDetector(
            onTap: () {
              _scaffoldKey.currentState!.openDrawer();
            },
            child: Icon(Icons.subject_sharp),
          ),
          suffixWidget: GestureDetector(
            onTap: () {},
            child: Container(
              width: 21.w,
              height: 21.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/icon_arrow_back.png",
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }

    // NOTE: CARD ST
    Widget cardStDetail() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(
          vertical: 24.h,
          horizontal: 24.h,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: kLigthGrayColor,
            width: 2.w,
          ),
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            Container(
              width: 100.w,
              height: 60.h,
              margin: EdgeInsets.only(
                top: 43.h,
                bottom: 31.h,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/icon_number_st_detail.png",
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: 36.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nomor ST : 1234 5678",
                        style: blackTextStyle.copyWith(
                          fontSize: 13.sp,
                          fontWeight: bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        "Nomor Kontrak : 9999 9999 9999",
                        style: blackTextStyle.copyWith(
                          fontSize: 13.sp,
                          fontWeight: bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Text(
                        "Detail Informasi",
                        style: darkGreyTextStyle.copyWith(
                          fontSize: 13.sp,
                          fontWeight: semibold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      CustomTextInformasiDetail(
                        title: 'Cabang Handling',
                        text: 'Lorem Ipsum',
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      CustomTextInformasiDetail(
                        title: 'Overdue',
                        text: 'Lorem Ipsum',
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      CustomTextInformasiDetail(
                        title: 'Nomor Rangka',
                        text: 'Lorem Ipsum',
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      CustomTextInformasiDetail(
                        title: 'Nomor Mesin',
                        text: 'Lorem Ipsum',
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      CustomTextInformasiDetail(
                        title: 'Nama STNK',
                        text: 'Lorem Ipsum',
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      CustomTextInformasiDetail(
                        title: 'Model',
                        text: 'Lorem Ipsum',
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      CustomTextInformasiDetail(
                        title: 'Merk',
                        text: 'Yamahmud',
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      CustomTextInformasiDetail(
                        title: 'Warna',
                        text: 'Hitam Metalik',
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      CustomTextInformasiDetail(
                        title: 'Tahun',
                        text: '1998',
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      CustomTextInformasiDetail(
                        title: 'Notes',
                        text: 'Lorem Ipsum',
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      CustomTextInformasiDetail(
                        title: 'Waktu Dibuat',
                        text: '1 Januari 2022',
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      CustomTextInformasiDetail(
                        title: 'Waktu Diperbaharui',
                        text: '2 Januari 2022',
                      ),
                    ],
                  )
                ],
              ),
            ),

            /// NOTE: BUTTON CONFIRMATION
            CustomButton(
              margin: EdgeInsets.only(
                top: 24.h,
                bottom: 36.h,
                left: 36.w,
                right: 36.w,
              ),
              title: "Konfirmasi",
              color: kPrimaryColor,
              textStyle: blackTextStyle,
              onPressed: () {
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      vertical: 48.h,
                    ),
                    child: AlertDialog(
                      titlePadding: EdgeInsets.only(
                        top: 10.h,
                      ),
                      title: Container(
                        margin: EdgeInsets.only(
                          top: 48.h,
                        ),
                        child: Text(
                          'Konfirmasi Berhasil!',
                          style: blackTextStyle.copyWith(
                            fontWeight: bold,
                            fontSize: 18.sp,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      content: Container(
                        margin: EdgeInsets.only(
                          top: 24.h,
                        ),
                        child: StyledText(
                          text:
                              'ST dengan Nomor <bold>1234 5678</bold> telah dikonfirmasi.',
                          tags: {
                            'bold': StyledTextTag(
                              style: TextStyle(
                                fontWeight: semibold,
                              ),
                            ),
                          },
                          style: blackTextStyle.copyWith(
                            fontSize: 13.sp,
                            fontWeight: light,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      actions: <Widget>[
                        CustomButton(
                          title: 'Ok',
                          margin: EdgeInsets.only(
                            bottom: 48.h,
                            left: 36.w,
                            right: 36.w,
                          ),
                          onPressed: () => Navigator.pop(context),
                          color: kPrimaryColor,
                          textStyle: blackTextStyle,
                        ),
                      ],
                      actionsPadding: EdgeInsets.only(
                        bottom: 10.h,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          18.r,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      );
    }

    /// NOTE: BUTTON BACK
    Widget buttonBack() {
      return Container(
        child: CustomButtonBorder(
          title: "Kembali",
          margin: EdgeInsets.only(
            top: 68.h,
            bottom: 36.h,
            left: 36.w,
            right: 36.w,
          ),
          titleColor: kDarkGreyColor,
          borderColor: kDarkGreyColor,
          borderWidth: 2,
          fontWeight: light,
          onPressed: () {},
        ),
      );
    }

    return Scaffold(
       key: _scaffoldKey,
          // drawer: CustomDrawer(),w
          drawer : Container(
            width: 300,
            height: 760,
            child: ClipRRect(
               borderRadius: BorderRadius.only(
               topRight: Radius.circular(35), bottomRight: Radius.circular(35)),
               child: CustomDrawer()
                ),
              ),
                drawerEnableOpenDragGesture : true,
          endDrawerEnableOpenDragGesture: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                navbar(),
                cardStDetail(),
                buttonBack(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
