import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:adira_cats/shared/theme.dart';

class SavePageEmpty extends StatelessWidget {
  const SavePageEmpty({Key? key}) : super(key: key);

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

    Widget contentEmpty() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin.h,
        ),
        child: Text(
          'Tidak ada yang disimpan.',
          style: darkGreyTextStyle.copyWith(
            fontWeight: light,
            fontSize: 13.sp,
          ),
        ),
      );
    }

    Widget buttonDeleteAll() {
      return Container(
        margin: EdgeInsets.only(
          left: 12.w,
          right: 12.w,
          top: 340.h,
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
                      contentEmpty(),
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
