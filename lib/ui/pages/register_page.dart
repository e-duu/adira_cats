import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_input.dart';
import 'package:flutter/material.dart';
import 'package:adira_cats/shared/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget logo() {
      return Container(
        width: 200.w,
        height: 34.h,
        margin: EdgeInsets.only(
          top: 72.h,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/adira_logo_yellow.png',
            ),
          ),
        ),
      );
    }

    /// Widget Title
    Widget title() {
      return Container(
        margin: EdgeInsets.only(
          top: 35.h,
        ),
        child: Column(
          children: [
            Text(
              'Daftar Sebagai Informan',
              style: blackTextStyle.copyWith(
                fontSize: 18.sp,
                fontWeight: bold,
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
          ],
        ),
      );
    }

    Widget input() {
      return Column(
        children: [
          CustomInput(
            hintText: 'Nama Depan',
            hintColor: kDarkGreyColor,
            margin: EdgeInsets.only(
              right: 36.w,
              left: 36.w,
            ),
          ),
          CustomInput(
            hintText: 'Nama Belakang',
            hintColor: kDarkGreyColor,
            margin: EdgeInsets.only(
              top: 12.h,
              right: 36.w,
              left: 36.w,
            ),
          ),
          CustomInput(
            hintText: 'Nomor KTP',
            hintColor: kDarkGreyColor,
            margin: EdgeInsets.only(
              top: 12.h,
              right: 36.w,
              left: 36.w,
            ),
          ),
          CustomInput(
            hintText: 'Tempat Lahir',
            hintColor: kDarkGreyColor,
            margin: EdgeInsets.only(
              top: 12.h,
              right: 36.w,
              left: 36.w,
            ),
          ),
          CustomInput(
            hintText: 'Tanggal Lahir',
            hintColor: kDarkGreyColor,
            margin: EdgeInsets.only(
              top: 12.h,
              right: 36.w,
              left: 36.w,
            ),
          ),
          CustomInput(
            hintText: 'Alamat KTP',
            hintColor: kDarkGreyColor,
            margin: EdgeInsets.only(
              top: 12.h,
              right: 36.w,
              left: 36.w,
            ),
          ),
          CustomInput(
            hintText: 'Alamat Domisili',
            hintColor: kDarkGreyColor,
            margin: EdgeInsets.only(
              top: 12.h,
              right: 36.w,
              left: 36.w,
            ),
          ),
          CustomInput(
            hintText: 'Email',
            hintColor: kDarkGreyColor,
            margin: EdgeInsets.only(
              top: 12.h,
              right: 36.w,
              left: 36.w,
            ),
          ),
          CustomInput(
            hintText: 'Nomor Telepon',
            hintColor: kDarkGreyColor,
            margin: EdgeInsets.only(
              top: 12.h,
              right: 36.w,
              left: 36.w,
            ),
          ),
        ],
      );
    }

    Widget button() {
      return Container(
        child: Column(
          children: [
            SizedBox(
              height: 34.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButtonBorder(
                  titleColor: kRedColor,
                  title: 'Batal',
                  onPressed: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => Container(
                      child: AlertDialog(
                        titlePadding: EdgeInsets.symmetric(
                          vertical: 24.h,
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
                          'Anda yakin ingin membatalkan?',
                          style: blackTextStyle.copyWith(
                            fontSize: 13.sp,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        actions: <Widget>[
                          CustomButtonBorder(
                            titleColor: kRedColor,
                            title: 'Batalkan',
                            onPressed: () {},
                            borderColor: kRedColor,
                            borderWidth: 2.r,
                            fontWeight: normal,
                            width: 308.w,
                            margin: EdgeInsets.only(
                              right: 36.w,
                              left: 36.w,
                            ),
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          CustomButton(
                            title: 'Lanjutkan',
                            onPressed: () => Navigator.pop(context, 'OK'),
                            color: kPrimaryColor,
                            width: 308.w,
                            margin: EdgeInsets.only(
                              right: 36.w,
                              left: 36.w,
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
                  borderWidth: 2,
                  fontWeight: normal,
                  width: 172.w,
                ),
                SizedBox(
                  width: 12.w,
                ),
                CustomButtonBorder(
                  titleColor: kDarkGreyColor,
                  title: 'Reset',
                  onPressed: () {},
                  borderColor: kDarkGreyColor,
                  borderWidth: 2,
                  fontWeight: normal,
                  width: 172.w,
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
              margin: EdgeInsets.only(
                right: 36.w,
                left: 36.w,
                bottom: 36.h,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      body: ListView(
        children: [
          SafeArea(
            child: Column(
              children: [
                logo(),
                title(),
                input(),
                button(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
