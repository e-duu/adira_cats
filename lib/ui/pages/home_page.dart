import 'package:adira_cats/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget navbar() {
      return Container(
        width: double.infinity,
        height: 163.h,
        margin: EdgeInsets.only(
          bottom: 20.h,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 36.w,
          vertical: 36.h,
        ),
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(18.r),
            bottomRight: Radius.circular(18.r),
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () => {},
                  icon: Icon(
                    Icons.subject_sharp,
                  ),
                ),
                Container(
                  height: 24,
                  width: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/adira_logo_white.png",
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48.w,
                  height: 48.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/image_user.png",
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 18.h,
            ),
            StyledText(
              text: 'Selamat Datang, <bold>Edward Einselton!</bold>',
              tags: {
                'bold': StyledTextTag(
                  style: TextStyle(fontWeight: extraBold),
                ),
              },
              style: blackTextStyle.copyWith(
                fontWeight: semibold,
                fontSize: 14.sp,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }

    Widget inputSearch() {
      return Container(
        height: 50.h,
        margin: EdgeInsets.only(top: 135.h, right: 36.w, left: 36.w),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(defaultRadius),
            color: kGreyColor),
        child: TextFormField(
          autocorrect: true,
          autofocus: false,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              horizontal: 18.w,
              vertical: 15.h,
            ),
            hintText: 'Apa Yang Anda Cari?',
            suffixIcon: IconButton(
              onPressed: () {},
              hoverColor: kTransparent,
              focusColor: kTransparent,
              highlightColor: kTransparent,
              icon: Icon(
                Icons.search_sharp,
                color: Colors.grey,
              ),
            ),
            hintStyle: TextStyle(color: kGreyColor),
            filled: true,
            fillColor: kWhiteColor,
            focusColor: kDarkGreyColor,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
              borderSide: BorderSide(color: kGreyColor, width: 2),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
              borderSide: BorderSide(
                color: kDarkGreyColor,
                width: 2.w,
              ),
            ),
          ),
        ),
      );
    }

    Widget notification() {
      return Container(
        width: double.infinity,
        height: 77.h,
        margin: EdgeInsets.symmetric(
          horizontal: 24.w,
          vertical: 24.h,
        ),
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
        decoration: BoxDecoration(
            color: kPrimaryColor, borderRadius: BorderRadius.circular(12.r)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Notif\nTerbaru',
              style: blackTextStyle.copyWith(
                fontSize: 14.sp,
                fontWeight: bold,
              ),
            ),
            Container(
              width: 190.w,
              height: 53.h,
              decoration: BoxDecoration(
                  color: kWhiteColor, borderRadius: BorderRadius.circular(8.r)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.notifications_none_sharp,
                    color: Colors.grey,
                  ),
                  Text(
                    'SK 14142 telah diterbitkan.',
                    style: blackTextStyle.copyWith(
                      fontSize: 11.sp,
                      fontWeight: semibold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 32.w,
              height: 32.h,
              decoration: BoxDecoration(
                color: kBlackColor,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                color: kWhiteColor,
              ),
            ),
          ],
        ),
      );
    }

    Widget menu() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(
          horizontal: 36.w,
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 14.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage(
                            'assets/icon_menu1.png',
                          ),
                          width: 72.w,
                          height: 72.h,
                        ),
                        Text(
                          'Pencarian Unit',
                          style: darkGreyTextStyle.copyWith(
                            fontSize: 10.sp,
                            fontWeight: semibold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage(
                            'assets/icon_menu2.png',
                          ),
                          width: 72.w,
                          height: 72.h,
                        ),
                        Text(
                          'Buat SK',
                          style: darkGreyTextStyle.copyWith(
                            fontSize: 10.sp,
                            fontWeight: semibold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage(
                            'assets/icon_menu3.png',
                          ),
                          width: 72.w,
                          height: 72.h,
                        ),
                        Text(
                          'Serah-Terima\nSK',
                          style: darkGreyTextStyle.copyWith(
                            fontSize: 10.sp,
                            fontWeight: semibold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 14.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage(
                            'assets/icon_menu4.png',
                          ),
                          width: 72.w,
                          height: 72.h,
                        ),
                        Text(
                          // margin: EdgeInsets.only(bottom: 14.h),
                          'Laporan',
                          style: darkGreyTextStyle.copyWith(
                            fontSize: 10.sp,
                            fontWeight: semibold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage(
                            'assets/icon_menu5.png',
                          ),
                          width: 72.w,
                          height: 72.h,
                        ),
                        Text(
                          'Proses Pencarian\nUnit',
                          style: darkGreyTextStyle.copyWith(
                            fontSize: 10.sp,
                            fontWeight: semibold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage(
                            'assets/icon_menu6.png',
                          ),
                          width: 72.w,
                          height: 72.h,
                        ),
                        Text(
                          'Penarikan-\nPengiriman',
                          style: darkGreyTextStyle.copyWith(
                            fontSize: 10.sp,
                            fontWeight: semibold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 14.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage(
                            'assets/icon_menu7.png',
                          ),
                          width: 72.w,
                          height: 72.h,
                        ),
                        Text(
                          'Input Hasil\nKunjungan',
                          style: darkGreyTextStyle.copyWith(
                            fontSize: 10.sp,
                            fontWeight: semibold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage(
                            'assets/icon_menu8.png',
                          ),
                          width: 72.w,
                          height: 72.h,
                        ),
                        Text(
                          'Pengajuan Biaya\nTarik',
                          style: darkGreyTextStyle.copyWith(
                            fontSize: 10.sp,
                            fontWeight: semibold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage(
                            'assets/icon_menu9.png',
                          ),
                          width: 72.w,
                          height: 72.h,
                        ),
                        Text(
                          'Pencarian Unit',
                          style: darkGreyTextStyle.copyWith(
                            fontSize: 10.sp,
                            fontWeight: semibold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget announcement() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: 36.w,
          vertical: 24.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                'Pengumuman',
                style: blackTextStyle.copyWith(
                  fontSize: 18.sp,
                  fontWeight: bold,
                ),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 120.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/announcement.png",
                          ),
                        ),
                        borderRadius: BorderRadius.circular(8.r)),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Text(
                    'Mobile App Adira Finance CATS Terbaru\nAkan Segera Hadir!',
                    style: blackTextStyle.copyWith(
                      fontSize: 13.sp,
                      fontWeight: bold,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Stack(
              children: [
                navbar(),
                inputSearch(),
              ],
            ),
            // CustomInputSearch(
            //   hintText: "Apa Yang Anda Cari?",
            //   onPressed: () {},
            // ),
            notification(),
            menu(),
            announcement()
          ]),
        ),
      ),
    );
  }
}
