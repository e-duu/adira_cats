import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_input.dart';
import 'package:adira_cats/ui/widgets/custom_logo_adira.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:adira_cats/shared/theme.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget logo() {
      return Container(
        margin: EdgeInsets.only(
          bottom: 10.h,
        ),
        child: CustomLogoAdira(
          text: 'Lupa Password Anda?',
        ),
      );
    }

    /// Widget Title
    Widget title() {
      return Container(
        child: Text(
          'Masukkan alamat ID yang terkait dengan akun Anda.',
          style: blackTextStyle.copyWith(
            fontSize: 14.sp,
            fontWeight: light,
          ),
        ),
      );
    }

    Widget input() {
      return CustomInput(
        hintText: 'User ID',
        hintColor: kDarkGreyColor,
        margin: EdgeInsets.only(
          top: 20.h,
          right: 18.w,
          left: 18.w,
        ),
      );
    }

    Widget button() {
      return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButtonBorder(
                  title: 'Kembali',
                  titleColor: kBlackColor,
                  onPressed: () {},
                  borderColor: kDarkGreyColor,
                  borderWidth: 2.r,
                  fontWeight: normal,
                  width: 188.w,
                ),
                SizedBox(
                  width: 12.w,
                ),
                CustomButtonBorder(
                  title: 'Reset',
                  titleColor: kBlackColor,
                  onPressed: () {},
                  borderColor: kDarkGreyColor,
                  borderWidth: 2.r,
                  fontWeight: normal,
                  width: 188.w,
                ),
              ],
            ),
            SizedBox(
              height: 12.h,
            ),
            CustomButton(
              title: 'Submit',
              textStyle: blackTextStyle,
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    horizontal: 2.w,
                    vertical: 48.h,
                  ),
                  child: AlertDialog(
                    titlePadding: EdgeInsets.only(
                      top: 10.h,
                    ),
                    title: Text(
                      'Password Dikirim.',
                      style: blackTextStyle.copyWith(
                        fontWeight: bold,
                        fontSize: 18.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    content: Text(
                      'Password sementara telah dikirim ke email Anda, silahkan ganti password Anda setelah login.',
                      style: blackTextStyle.copyWith(
                        fontSize: 13.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    actions: <Widget>[
                      CustomButton(
                        title: 'Ok',
                        onPressed: () => Navigator.pop(context, 'OK'),
                        color: kPrimaryColor,
                        textStyle: blackTextStyle,
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
              color: kPrimaryColor,
              margin: EdgeInsets.symmetric(
                horizontal: 20.w,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: Visibility(
        child: button(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: Column(
          children: [
            logo(),
            title(),
            input(),
          ],
        ),
      ),
    );
  }
}
