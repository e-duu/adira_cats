import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:adira_cats/shared/theme.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

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
          top: 49.h,
          bottom: 10.h,
        ),
        child: Column(
          children: [
            Text(
              'Lupa Password Anda?',
              style: blackTextStyle.copyWith(
                fontSize: 18.sp,
                fontWeight: bold,
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
              'Masukkan alamat ID yang terkait dengan akun Anda.',
              style: blackTextStyle.copyWith(
                fontSize: 14.sp,
                fontWeight: light,
              ),
            ),
          ],
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
              onPressed: () {},
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
