import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_input.dart';
import 'package:adira_cats/ui/widgets/custom_logo_adira.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:adira_cats/shared/theme.dart';
import 'package:styled_text/styled_text.dart';
import 'package:flutter/material.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget logo() {
      return Container(
        margin: EdgeInsets.only(
          bottom: 10.h,
        ),
        child: CustomLogoAdira(
          text: 'Ganti Password Baru',
        ),
      );
    }

    /// Widget Title
    Widget title() {
      return Container(
        child: StyledText(
          text: 'Masukkan password baru untuk User ID\n<bold>edward999</bold>',
          tags: {
            'bold': StyledTextTag(
              style: TextStyle(
                fontWeight: bold,
              ),
            ),
          },
          style: blackTextStyle.copyWith(
            fontWeight: light,
            fontSize: 13,
          ),
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget input() {
      return Column(
        children: [
          CustomInput(
            hintText: 'Password Lama',
            hintColor: kDarkGreyColor,
            margin: EdgeInsets.only(
              top: 20.h,
              right: 18.w,
              left: 18.w,
            ),
          ),
          CustomInput(
            hintText: 'Password Baru',
            hintColor: kDarkGreyColor,
            margin: EdgeInsets.only(
              top: 20.h,
              right: 18.w,
              left: 18.w,
            ),
          ),
          CustomInput(
            hintText: 'Ulangi Password Baru',
            hintColor: kDarkGreyColor,
            margin: EdgeInsets.only(
              top: 20.h,
              right: 18.w,
              left: 18.w,
            ),
          ),
        ],
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
              textStyle: blackTextStyle,
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
