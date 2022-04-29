import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_input.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';
import '../widgets/custom_logo_adira.dart';

class RegisterFourthPage extends StatelessWidget {
  const RegisterFourthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Icon(Icons.arrow_downward);
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          bottom: 24.h,
        ),
        child: CustomLogoAdira(
          text: 'Daftar Sebagai Informan',
        ),
      );
    }

    Widget inputSection() {
      Widget newNameUserId() {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nama User ID Baru",
              style: darkGreyTextStyle.copyWith(
                fontSize: 13.sp,
                fontWeight: semibold,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            CustomInput(
              hintText: 'Nama User ID Baru',
              hintColor: kDarkGreyColor,
              filled: true,
              margin: EdgeInsets.only(
                bottom: 12.h,
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
          ],
        );
      }

      Widget password() {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Password",
              style: darkGreyTextStyle.copyWith(
                fontSize: 13.sp,
                fontWeight: semibold,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            CustomInput(
              hintText: 'Password',
              hintColor: kDarkGreyColor,
              filled: true,
              margin: EdgeInsets.only(
                bottom: 12.h,
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
          ],
        );
      }

      Widget passwordConfirmation() {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Ulangi Password",
              style: darkGreyTextStyle.copyWith(
                fontSize: 13.sp,
                fontWeight: semibold,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            CustomInput(
              hintText: 'Ulangi Password',
              hintColor: kDarkGreyColor,
              filled: true,
            ),
            SizedBox(
              height: 12.h,
            ),
          ],
        );
      }

      return Container(
        margin: EdgeInsets.only(
          top: defaultPadding.h,
          left: defaultMargin.w,
          right: defaultMargin.w,
        ),
        child: Column(
          children: [
            newNameUserId(),
            password(),
            passwordConfirmation(),
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
                  title: 'Kembali',
                  titleColor: kBlackColor,
                  onPressed: () {},
                  borderColor: kDarkGreyColor,
                  borderWidth: 2.r,
                  fontWeight: normal,
                  width: 138.w,
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
                  width: 138.w,
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
                bottom: defaultMargin.h,
                left: defaultMargin.w,
                right: defaultMargin.w,
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
                header(),
                inputSection(),
                button(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
