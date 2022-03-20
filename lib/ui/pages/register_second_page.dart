import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_dropdown.dart';
import 'package:adira_cats/ui/widgets/custom_input.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';
import '../widgets/custom_logo_adira.dart';

class RegisterSecondPage extends StatelessWidget {
  const RegisterSecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    icon:
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
      Widget accountInput() {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nomor Rekening",
              style: darkGreyTextStyle.copyWith(
                fontSize: 13.sp,
                fontWeight: semibold,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            CustomInput(
              hintText: 'Nomor Rekening',
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

      Widget chooseBank() {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Pilih Bank",
              style: darkGreyTextStyle.copyWith(
                fontSize: 13.sp,
                fontWeight: semibold,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            CustomDropdown(
              items: [
                'Bank BRI',
                'Bank BCA',
                'Bank Jago',
              ],
              hintText: 'Pilih Bank',
            ),
            SizedBox(
              height: 12.h,
            ),
          ],
        );
      }

      Widget branchBank() {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Cabang Bank",
              style: darkGreyTextStyle.copyWith(
                fontSize: 13.sp,
                fontWeight: semibold,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            CustomInput(
              hintText: 'Cabang Bank',
              hintColor: kDarkGreyColor,
              filled: true,
            ),
            SizedBox(
              height: 12.h,
            ),
          ],
        );
      }

      Widget customerName() {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nama Nasabah",
              style: darkGreyTextStyle.copyWith(
                fontSize: 13.sp,
                fontWeight: semibold,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            CustomInput(
              hintText: 'Nama Nasabah',
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
          top: 24.h,
        ),
        child: Column(
          children: [
            accountInput(),
            chooseBank(),
            branchBank(),
            customerName(),
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
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin.w,
        ),
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
