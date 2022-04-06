import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_drawer.dart';
import 'package:adira_cats/ui/widgets/custom_rectangle_edit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';
import '../widgets/custom_navbar.dart';

class UnitSearchPullFoundPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  UnitSearchPullFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget navbar() {
      return Container(
        margin: EdgeInsets.only(
          bottom: defaultPadding.h,
        ),
        child: CustomNavbar(
          text: "Tarik Unit",
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

    Widget uploadImage() {
      return Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomRectangleEdit(
                  imageUrl: 'assets/image_unit_pull1.png',
                  onPressed: () {},
                ),
                SizedBox(
                  width: 16.w,
                ),
                CustomRectangleEdit(
                  imageUrl: 'assets/image_unit_pull2.png',
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomRectangleEdit(
                  imageUrl: 'assets/image_unit_pull1.png',
                  onPressed: () {},
                ),
                SizedBox(
                  width: 16.w,
                ),
                CustomRectangleEdit(
                  imageUrl: 'assets/image_unit_pull2.png',
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomRectangleEdit(
                  imageUrl: 'assets/image_unit_pull1.png',
                  onPressed: () {},
                ),
                SizedBox(
                  width: 16.w,
                ),
                CustomRectangleEdit(
                  imageUrl: 'assets/image_unit_pull2.png',
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget button() {
      return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 34.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButtonBorder(
                  title: "Batalkan",
                  titleColor: kRedColor,
                  borderColor: kRedColor,
                  borderWidth: 2,
                  fontWeight: light,
                  width: defaultBottom.w,
                  onPressed: () => showDialog<String>(
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
                            'Batalkan?',
                            style: blackTextStyle.copyWith(
                              fontWeight: bold,
                              fontSize: 18.sp,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        content: Text(
                          "Anda yakin akan membatalkan?",
                          style: blackTextStyle,
                          textAlign: TextAlign.center,
                        ),
                        actions: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                              bottom: defaultPadding.h,
                              right: defaultPadding.w,
                              left: defaultPadding.w,
                            ),
                            child: Column(
                              children: [
                                CustomButtonBorder(
                                  title: 'Batalkan',
                                  titleColor: kRedColor,
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  borderColor: kRedColor,
                                  borderWidth: 2,
                                  fontWeight: light,
                                ),
                                SizedBox(
                                  height: 12.h,
                                ),
                                CustomButton(
                                  title: 'Lanjutkan',
                                  onPressed: () {},
                                  color: kPrimaryColor,
                                  textStyle: blackTextStyle,
                                ),
                              ],
                            ),
                          )
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
                  ),
                ),
                SizedBox(
                  width: 12.w,
                ),
                CustomButtonBorder(
                  title: 'Simpan',
                  titleColor: kBlackColor,
                  onPressed: () => showDialog<String>(
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
                            'Disimpan.',
                            style: blackTextStyle.copyWith(
                              fontWeight: bold,
                              fontSize: 18.sp,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        content: Container(
                          child: Text(
                            "Daftar Tarik Unit berhasil disimpan!",
                            style: blackTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        actions: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                              bottom: defaultPadding.h,
                              right: defaultPadding.w,
                              left: defaultPadding.w,
                            ),
                            child: CustomButton(
                              title: 'Ok',
                              onPressed: () {},
                              color: kPrimaryColor,
                              textStyle: blackTextStyle,
                            ),
                          )
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
                  ),
                  borderColor: kDarkGreyColor,
                  borderWidth: 2.r,
                  fontWeight: normal,
                  width: 152.w,
                ),
              ],
            ),
            SizedBox(
              height: 12.h,
            ),
            CustomButton(
              title: 'Lanjutkan',
              onPressed: () {},
              color: kPrimaryColor,
              textStyle: blackTextStyle,
              margin: EdgeInsets.only(
                left: 23.w,
                right: 23.w,
                bottom: defaultMargin.h,
              ),
            ),
          ],
        ),
      );
    }

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
      backgroundColor: kWhiteColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              navbar(),
              uploadImage(),
              button(),
            ],
          ),
        ),
      ),
    );
  }
}
