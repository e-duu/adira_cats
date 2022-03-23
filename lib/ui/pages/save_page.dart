import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_card_notification.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:adira_cats/shared/theme.dart';

class SavePage extends StatelessWidget {
  const SavePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget navbar() {
      return Container(
        child: CustomNavbar(
          text: "Disimpan",
          preffixWidget: GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.subject_sharp,
            ),
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

    Widget cardNotif() {
      return Container(
        child: Column(
          children: [
            SizedBox(
              height: 6.h,
            ),
            // NOTE: CARD SAVE
            CustomCardNotification(
              icon: false,
              createTime: false,
              onTap: () {},
              title: 'Smith Erwin',
              message: 'Nomor Kontrak : 9999 8888 7777',
              fontWeight: semibold,
            ),
            CustomCardNotification(
              onTap: () {},
              icon: false,
              createTime: false,
              title: 'Zacharius Michael',
              message: 'Nomor Kontrak : 9999 8888 6666',
              fontWeight: light,
            ),
            CustomCardNotification(
              onTap: () {},
              icon: false,
              createTime: false,
              title: 'Ackermann Kenny',
              message: 'Nomor Kontrak : 9999 8888 1111',
              fontWeight: light,
            ),
            CustomCardNotification(
              onTap: () {},
              icon: false,
              createTime: false,
              title: 'Kirschtein Jean',
              message: 'Nomor Kontrak : 9999 8888 2222',
              fontWeight: light,
            ),
          ],
        ),
      );
    }

    Widget buttonDeleteAll() {
      return Container(
        margin: EdgeInsets.only(
          left: 12.w,
          right: 12.w,
          top: 295.h,
          bottom: 12.h,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButtonBorder(
              title: 'Hapus Semua',
              titleColor: kRedColor,
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => Container(
                  child: AlertDialog(
                    titlePadding: EdgeInsets.symmetric(
                      vertical: defaultPadding.h,
                    ),
                    title: Container(
                      margin: EdgeInsets.only(
                        top: 48.h,
                      ),
                      child: Text(
                        'Hapus Semua?',
                        style: blackTextStyle.copyWith(
                          fontWeight: bold,
                          fontSize: 18.sp,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    content: Text(
                      'Anda yakin menghapus semua?',
                      style: blackTextStyle.copyWith(
                        fontSize: 13.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    actions: <Widget>[
                      CustomButtonBorder(
                        titleColor: kDarkGreyColor,
                        title: 'Kembali',
                        onPressed: () {},
                        borderColor: kDarkGreyColor,
                        borderWidth: 2.r,
                        fontWeight: normal,
                        width: 308.w,
                        margin: EdgeInsets.only(
                          right: defaultMargin.w,
                          left: defaultMargin.w,
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      CustomButton(
                        title: 'Hapus Semua',
                        onPressed: () => Navigator.pop(context, 'OK'),
                        color: kRedColor,
                        textStyle: whiteTextStyle,
                        width: 308.w,
                        margin: EdgeInsets.only(
                          right: defaultMargin.w,
                          left: defaultMargin.w,
                          bottom: 48.h,
                        ),
                      ),
                    ],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.r),
                    ),
                  ),
                ),
              ),
              borderColor: kRedColor,
              borderWidth: 2.w,
              fontWeight: light,
            ),
          ],
        ),
      );
    }

    Widget buttonBack() {
      return Container(
        margin: EdgeInsets.only(
          left: 12.w,
          right: 12.w,
          bottom: defaultMargin.h,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButtonBorder(
              title: 'Kembali',
              titleColor: kDarkGreyColor,
              onPressed: () {},
              borderColor: kDarkGreyColor,
              borderWidth: 2.w,
              fontWeight: light,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                navbar(),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: defaultPadding.w,
                  ),
                  child: Column(
                    children: [
                      cardNotif(),
                      buttonDeleteAll(),
                      buttonBack(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
