import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_drawer.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:adira_cats/ui/widgets/custom_text_informasi_detail.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class HandoverStConfirmedPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  HandoverStConfirmedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget navbar() {
      return Container(
        child: CustomNavbar(
          text: "Serah Terima ST",
          preffixWidget: GestureDetector(
            onTap: () {},
            child: libraryIcon,
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

    Widget cardStDetail() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(
          vertical: defaultPadding.h,
          horizontal: defaultPadding.h,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: kLigthGrayColor,
            width: 2.w,
          ),
          borderRadius: BorderRadius.circular(
            defaultRadius,
          ),
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
                horizontal: defaultMargin.w,
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

            /// NOTE: NOTIF CONFIRMED ST
            Container(
              margin: EdgeInsets.symmetric(
                vertical: defaultPadding.h,
              ),
              child: Text(
                "ST telah dikonfirmasi pada 10 maret 2022",
                style: darkGreyTextStyle.copyWith(
                  fontWeight: light,
                  fontSize: 12.sp,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                bottom: defaultMargin.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  /// NOTE: CETAK ST
                  Container(
                    height: 68.h,
                    child: CustomButton(
                      title: 'Cetak ST',
                      onPressed: () {},
                      color: kPrimaryColor,
                      textStyle: blackTextStyle.copyWith(
                        fontWeight: light,
                      ),
                      width: 94.w,
                    ),
                  ),

                  /// NOTE: CETAK BASTK
                  Container(
                    height: 68.h,
                    child: CustomButton(
                      title: 'Cetak\nBASTK',
                      onPressed: () {},
                      color: kGreenColor,
                      textStyle: whiteTextStyle.copyWith(
                        fontWeight: light,
                      ),
                      width: 94.w,
                    ),
                  ),

                  /// NOTE: CETAK HisPay
                  Container(
                    height: 68.h,
                    child: CustomButton(
                      title: 'Buat\nHisPay',
                      onPressed: () {},
                      color: kGreyColor,
                      textStyle: blackTextStyle.copyWith(
                        fontWeight: light,
                      ),
                      width: 94.w,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget buttonBack() {
      return Container(
        child: CustomButtonBorder(
          title: "Kembali",
          margin: EdgeInsets.only(
            top: 68.h,
            bottom: defaultMargin.h,
            left: defaultMargin.w,
            right: defaultMargin.w,
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
      drawer: Container(
        width: 300,
        height: 760,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(35),
            bottomRight: Radius.circular(35),
          ),
          child: CustomDrawer(),
        ),
      ),
      drawerEnableOpenDragGesture: true,
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
