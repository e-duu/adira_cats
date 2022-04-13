import 'package:adira_cats/cubit/page_cubit.dart';
import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_bottom_navigation_item.dart';
import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_drawer.dart';
import 'package:adira_cats/ui/widgets/custom_input.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:adira_cats/ui/widgets/custom_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget navbar() {
      return Container(
        // height: 100,
        child: CustomNavbar(
          text: "Profil Saya",
          preffixWidget: GestureDetector(
            onTap: () {
              _scaffoldKey.currentState!.openDrawer();
            },
            child: libraryIcon,
          ),
          suffixWidget: SizedBox(),
        ),
      );
    }

    Widget profile() {
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: defaultMargin.h,
            ),
            width: 160.w,
            height: 160.h,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2.w,
                color: kGreyColor,
              ),
              shape: BoxShape.circle,
              image: DecorationImage(
                // fit: BoxFit.cover,
                image: AssetImage(
                  "assets/image_user.png",
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(defaultRadius),
                        color: kPrimaryColor,
                      ),
                      child: editIcon,
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: defaultPadding.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Edward Einselton",
                style: blackTextStyle.copyWith(
                  fontSize: 18.sp,
                  fontWeight: bold,
                ),
              ),
              IconButton(
                icon: editIcon,
                onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => SingleChildScrollView(
                    child: Container(
                      width: double.infinity,
                      child: AlertDialog(
                        titlePadding: EdgeInsets.only(
                          top: 10.h,
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 20.h,
                        ),
                        title: Container(
                          margin: EdgeInsets.only(
                            top: 48.h,
                          ),
                          child: Text(
                            'Ganti Nama',
                            style: blackTextStyle.copyWith(
                              fontWeight: bold,
                              fontSize: 18.sp,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        content: Container(
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(
                            horizontal: defaultMargin.w,
                          ),
                          child: Column(
                            children: [
                              Text(
                                "Nama Depan",
                                style: darkGreyTextStyle.copyWith(
                                  fontSize: 13.sp,
                                  fontWeight: semibold,
                                ),
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              CustomInput(
                                hintText: "Nama Depan",
                                hintColor: kDarkGreyColor,
                                value: "Edward",
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              Text(
                                "Nama Belakang",
                                style: darkGreyTextStyle.copyWith(
                                  fontSize: 13.sp,
                                  fontWeight: semibold,
                                ),
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              CustomInput(
                                hintText: "Nama Belakang",
                                hintColor: kDarkGreyColor,
                                value: "Einselton",
                              )
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          Container(
                            width: 380.w,
                            margin: EdgeInsets.only(
                              right: defaultMargin.w,
                              left: defaultMargin.w,
                              bottom: 48.h,
                            ),
                            child: Column(
                              children: [
                                CustomButtonBorder(
                                  title: "Batalkan",
                                  titleColor: kDarkGreyColor,
                                  onPressed: () => Navigator.pop(context),
                                  borderColor: kDarkGreyColor,
                                  borderWidth: 2,
                                  fontWeight: light,
                                ),
                                SizedBox(
                                  height: 12.h,
                                ),
                                CustomButton(
                                  title: 'Tetap Edit',
                                  onPressed: () {},
                                  color: kRedColor,
                                  textStyle: whiteTextStyle,
                                ),
                              ],
                            ),
                          ),
                        ],
                        actionsPadding: EdgeInsets.only(
                          bottom: 10.h,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.r),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      );
    }

    Widget formInput() {
      return Container(
        margin: EdgeInsets.only(
          top: 18.h,
          right: defaultMargin.w,
          left: defaultMargin.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "User ID",
              style: darkGreyTextStyle.copyWith(
                fontSize: 13.sp,
                fontWeight: semibold,
              ),
            ),
            CustomInput(
              readOnly: true,
              hintText: "edward999",
              hintColor: kBlackColor,
              margin: EdgeInsets.only(
                top: 12.h,
              ),
              width: double.infinity,
            ),
            SizedBox(
              height: 12.h,
            ),
            SizedBox(
              height: 12.h,
            ),
            Text(
              "Nomor KTP",
              style: darkGreyTextStyle.copyWith(
                fontSize: 13.sp,
                fontWeight: semibold,
              ),
            ),
            CustomInput(
              readOnly: true,
              hintText: "9999 9999 9999",
              hintColor: kBlackColor,
              margin: EdgeInsets.only(
                top: 12.h,
              ),
              width: double.infinity,
            ),
            SizedBox(
              height: 12.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tempat Lahir",
                      style: darkGreyTextStyle.copyWith(
                        fontSize: 13.sp,
                        fontWeight: semibold,
                      ),
                    ),
                    CustomInput(
                      readOnly: true,
                      hintText: "Jakarta",
                      hintColor: kBlackColor,
                      margin: EdgeInsets.only(
                        top: 12.h,
                      ),
                      width: 138.w,
                    ),
                  ],
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tanggal Lahir",
                      style: darkGreyTextStyle.copyWith(
                        fontSize: 13.sp,
                        fontWeight: semibold,
                      ),
                    ),
                    CustomInput(
                      readOnly: true,
                      hintText: "29 Februari 1996",
                      hintColor: kBlackColor,
                      margin: EdgeInsets.only(
                        top: 12.h,
                      ),
                      width: 138.w,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 12.h,
            ),
            Text(
              "Alamat KTP",
              style: darkGreyTextStyle.copyWith(
                fontSize: 13.sp,
                fontWeight: semibold,
              ),
            ),
            CustomTextField(
              readOnly: true,
              hintColor: kBlackColor,
              hintText:
                  "Jln. Raya Bau Petrikor no.8, Kec. Camat, Kab. Kabup, Provinsi DKI Jakarta",
              maxLines: 2,
              margin: EdgeInsets.only(
                top: 12.h,
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Text(
              "Alamat Domisili",
              style: darkGreyTextStyle.copyWith(
                fontSize: 13.sp,
                fontWeight: semibold,
              ),
            ),
            CustomTextField(
              readOnly: true,
              hintColor: kBlackColor,
              hintText: "Alamat Domisili",
              maxLines: 2,
              margin: EdgeInsets.only(
                top: 12.h,
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Text(
              "Email",
              style: darkGreyTextStyle.copyWith(
                fontSize: 13.sp,
                fontWeight: semibold,
              ),
            ),
            CustomInput(
              readOnly: true,
              hintText: "edward@gmail.com",
              hintColor: kBlackColor,
              margin: EdgeInsets.only(
                top: 12.h,
              ),
              width: double.infinity,
            ),
            SizedBox(
              height: 12.h,
            ),
            Text(
              "Nomer Telepon",
              style: darkGreyTextStyle.copyWith(
                fontSize: 13.sp,
                fontWeight: semibold,
              ),
            ),
            CustomInput(
              readOnly: true,
              hintText: "0813261392",
              hintColor: kBlackColor,
              margin: EdgeInsets.only(
                top: 12.h,
              ),
              width: double.infinity,
            ),
          ],
        ),
      );
    }

    Widget buttonChangePassword() {
      return Container(
        child: CustomButton(
          title: 'Ganti Password',
          color: kPrimaryColor,
          textStyle: blackTextStyle,
          margin: EdgeInsets.only(
            top: defaultMargin.h,
            left: defaultMargin.w,
            right: defaultMargin.w,
          ),
          onPressed: () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => SingleChildScrollView(
              child: Container(
                width: double.infinity,
                child: AlertDialog(
                  titlePadding: EdgeInsets.only(
                    top: 10.h,
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 20.h,
                  ),
                  title: Container(
                    margin: EdgeInsets.only(
                      top: 48.h,
                    ),
                    child: Text(
                      'Ganti Password',
                      style: blackTextStyle.copyWith(
                        fontWeight: bold,
                        fontSize: 18.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  content: Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(
                      horizontal: defaultMargin.w,
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Password Lama",
                          style: darkGreyTextStyle.copyWith(
                            fontSize: 13.sp,
                            fontWeight: semibold,
                          ),
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        CustomInput(
                          hintText: "Password Lama",
                          hintColor: kDarkGreyColor,
                          obscureText: true,
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Text(
                          "Password Baru",
                          style: darkGreyTextStyle.copyWith(
                            fontSize: 13.sp,
                            fontWeight: semibold,
                          ),
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        CustomInput(
                          hintText: "Password Baru",
                          hintColor: kDarkGreyColor,
                          obscureText: true,
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Text(
                          "konfimasi Password Baru",
                          style: darkGreyTextStyle.copyWith(
                            fontSize: 13.sp,
                            fontWeight: semibold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        CustomInput(
                          hintText: "Konfirmasi Password Baru",
                          hintColor: kDarkGreyColor,
                          obscureText: true,
                        ),
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    Container(
                      width: 380.w,
                      margin: EdgeInsets.only(
                        right: defaultMargin.w,
                        left: defaultMargin.w,
                        bottom: 48.h,
                      ),
                      child: Column(
                        children: [
                          CustomButtonBorder(
                            title: "Batalkan",
                            titleColor: kDarkGreyColor,
                            onPressed: () => Navigator.pop(context),
                            borderColor: kDarkGreyColor,
                            borderWidth: 2,
                            fontWeight: light,
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          CustomButton(
                            title: 'Tetap Edit',
                            onPressed: () {},
                            color: kRedColor,
                            textStyle: whiteTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ],
                  actionsPadding: EdgeInsets.only(
                    bottom: 10.h,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.r),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }

    Widget buttonLogout() {
      return Container(
        child: CustomButtonBorder(
          title: "Logout",
          margin: EdgeInsets.only(
            top: 12.h,
            bottom: defaultBottom.h,
            left: defaultMargin.w,
            right: defaultMargin.w,
          ),
          titleColor: kRedColor,
          borderColor: kRedColor,
          borderWidth: 2,
          fontWeight: light,
          onPressed: () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => Container(
              width: double.infinity,
              child: AlertDialog(
                titlePadding: EdgeInsets.only(
                  top: 10.h,
                ),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 20.h,
                ),
                title: Container(
                  margin: EdgeInsets.only(
                    top: 48.h,
                  ),
                  child: Text(
                    'Logout?',
                    style: blackTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 18.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                content: Container(
                  width: 200.w,
                  child: Text(
                    'Anda yakin ingin logout?',
                    style: blackTextStyle.copyWith(
                      fontSize: 13.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                actions: <Widget>[
                  Container(
                    width: 380.w,
                    margin: EdgeInsets.only(
                      right: defaultMargin.w,
                      left: defaultMargin.w,
                      bottom: 48.h,
                    ),
                    child: Column(
                      children: [
                        CustomButtonBorder(
                          title: "Kembali",
                          titleColor: kDarkGreyColor,
                          onPressed: () => Navigator.pop(context),
                          borderColor: kDarkGreyColor,
                          borderWidth: 2,
                          fontWeight: light,
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        CustomButton(
                          title: 'Logout',
                          onPressed: () {},
                          color: kRedColor,
                          textStyle: whiteTextStyle,
                        ),
                      ],
                    ),
                  ),
                ],
                actionsPadding: EdgeInsets.only(
                  bottom: 10.h,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.r),
                ),
              ),
            ),
          ),
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
         drawer : Container(
            width: 300,
            height: 760,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(35),
                bottomRight: Radius.circular(35)
              ),
            child: CustomDrawer()
            ),
          ),
          drawerEnableOpenDragGesture: true,
          endDrawerEnableOpenDragGesture: false,
          resizeToAvoidBottomInset: false,
          floatingActionButton: bottomNavigation(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          backgroundColor: kWhiteColor,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  navbar(),
                  profile(),
                  formInput(),
                  buttonChangePassword(),
                  buttonLogout(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
