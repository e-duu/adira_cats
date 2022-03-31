import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:styled_text/styled_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../cubit/page_cubit.dart';
import '../widgets/custom_bottom_navigation_item.dart';
import '../widgets/custom_drawer.dart';

class HomePageOption extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  HomePageOption({Key? key}) : super(key: key);

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
          horizontal: defaultMargin.w,
          vertical: defaultMargin.h,
        ),
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(defaultRadius),
            bottomRight: Radius.circular(defaultRadius),
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () => {_scaffoldKey.currentState!.openDrawer()},
                  icon: libraryIcon,
                ),
                Container(
                  width: 120.w,
                  height: defaultPadding.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/adira_logo_white.png",
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfilePage(),
                      ),
                    );
                  },
                  child: Container(
                    width: 48.w,
                    height: 48.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/image_user.png",
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // SizedBox(
            //   height: 16.h,
            // ),
            Spacer(),
            StyledText(
              text: 'Selamat Datang, <bold>Edward Einselton!</bold>',
              tags: {
                'bold': StyledTextTag(
                  style: TextStyle(
                    fontWeight: extraBold,
                  ),
                ),
              },
              style: blackTextStyle.copyWith(
                fontWeight: normal,
                fontSize: 12.sp,
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
        margin: EdgeInsets.only(
          top: 135.h,
          right: defaultPadding.w,
          left: defaultPadding.w,
        ),
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
            hintStyle: TextStyle(
              color: kDarkGreyColor,
            ),
            filled: true,
            fillColor: kWhiteColor,
            focusColor: kDarkGreyColor,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
              borderSide: BorderSide(
                color: kGreyColor,
                width: 2,
              ),
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
          horizontal: defaultPadding.w,
          vertical: defaultPadding.h,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 12.w,
          vertical: 12.h,
        ),
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Notif\nTerbaru',
              style: blackTextStyle.copyWith(
                fontSize: 12.sp,
                fontWeight: bold,
              ),
            ),
            Container(
              width: 190.w,
              height: 53.h,
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
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
                      fontSize: 10.sp,
                      fontWeight: semibold,
                    ),
                    overflow: TextOverflow.ellipsis,
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

    Widget announcement() {
      return Container(
        padding: EdgeInsets.all(14),
        margin: EdgeInsets.only(
          left: defaultPadding.w,
          right: defaultPadding.w,
          bottom: defaultMargin.h,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(defaultPadding.r),
            topLeft: Radius.circular(defaultPadding.r),
            bottomLeft: Radius.circular(defaultPadding.r),
            bottomRight: Radius.circular(defaultPadding.r),
          ),
          boxShadow: [
            BoxShadow(
              color: kGreyColor.withOpacity(1),
              spreadRadius: 0.1,
              blurRadius: 6,
              blurStyle: BlurStyle.outer,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                'Pengumuman',
                style: blackTextStyle.copyWith(
                  fontSize: 14.sp,
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
                          "assets/image_announcement.png",
                        ),
                      ),
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Text(
                    'Mobile App Adira Finance CATS Terbaru Akan Segera Hadir!',
                    style: blackTextStyle.copyWith(
                      fontSize: 10.sp,
                      fontWeight: bold,
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 230,
                        child: Text(
                          'Ini deksripsi singkat, untuk lebih lengkap baca baca baca',
                          style: darkGreyTextStyle.copyWith(
                            fontSize: 8.sp,
                            fontWeight: normal,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Baca Selengkapnya',
                          style: blackTextStyle.copyWith(
                            fontSize: 8.sp,
                            fontWeight: bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget menu() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          left: defaultMargin.w,
          right: defaultMargin.w,
          bottom: defaultBottom.h,
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                bottom: 14.h,
              ),
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
                          width: 64.w,
                          height: 64.h,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Pencarian Unit',
                          style: darkGreyTextStyle.copyWith(
                            fontSize: 8.sp,
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
                          width: 64.w,
                          height: 64.h,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Buat Surat Tugas',
                          style: darkGreyTextStyle.copyWith(
                            fontSize: 8.sp,
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
                          width: 64.w,
                          height: 64.h,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Serah-Terima\nSurat Tugas',
                          style: darkGreyTextStyle.copyWith(
                            fontSize: 8.sp,
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
              margin: EdgeInsets.only(
                bottom: 14.h,
              ),
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
                          width: 64.w,
                          height: 64.h,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          // margin: EdgeInsets.only(bottom: 14.h),
                          'Laporan',
                          style: darkGreyTextStyle.copyWith(
                            fontSize: 8.sp,
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
                            'assets/icon_menu7.png',
                          ),
                          width: 64.w,
                          height: 64.h,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Input Hasil\nKunjungan',
                          style: darkGreyTextStyle.copyWith(
                            fontSize: 8.sp,
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
                          width: 64.w,
                          height: 64.h,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Pengajuan\nBiaya Tarik',
                          style: darkGreyTextStyle.copyWith(
                            fontSize: 8.sp,
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
          ],
        ),
      );
    }

    Widget bottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 100.h,
          padding: EdgeInsets.symmetric(
            horizontal: defaultPadding,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(defaultPadding.r),
              topLeft: Radius.circular(defaultPadding.r),
            ),
            boxShadow: [
              BoxShadow(
                color: kLigthGrayColor.withOpacity(1),
                spreadRadius: 3,
                blurRadius: 18.r,
                offset: Offset(0, 0),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // NOTE: ICON CHAT
                  CustomBottomNavigationItem(
                    index: 1,
                    icon: Icons.message,
                    isNotif: true,
                    number: 15,
                  ),

                  // NOTE: ICON LOCATION
                  CustomBottomNavigationItem(
                    index: 2,
                    icon: Icons.location_on,
                  ),

                  // NOTE: ICON HOME
                  CustomBottomNavigationItem(
                    index: 0,
                    icon: Icons.home,
                  ),

                  // NOTE: ICON NOTIFICATION
                  CustomBottomNavigationItem(
                    index: 3,
                    icon: Icons.notifications,
                    isNotif: true,
                    number: 99,
                  ),

                  // NOTE: ICON PROFILE
                  CustomBottomNavigationItem(
                    index: 4,
                    icon: Icons.person,
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          key: _scaffoldKey,
          drawer: Container(
            width: 300.w,
            height: 760.h,
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
          resizeToAvoidBottomInset: false,
          floatingActionButton: bottomNavigation(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          backgroundColor: kLightYellowColor,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      navbar(),
                      inputSearch(),
                    ],
                  ),
                  notification(),
                  announcement(),
                  menu(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
