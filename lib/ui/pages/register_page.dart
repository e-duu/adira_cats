import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_input.dart';
import 'package:adira_cats/ui/widgets/custom_logo_adira.dart';
import 'package:flutter/material.dart';
import 'package:adira_cats/shared/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:date_time_picker/date_time_picker.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          bottom: defaultPadding.h,
        ),
        child: CustomLogoAdira(
          text: 'Daftar Sebagai Informan',
        ),
      );
    }

    Widget inputSection() {
      Widget firstName() {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nama Depan",
              style: darkGreyTextStyle.copyWith(
                fontSize: 13.sp,
                fontWeight: semibold,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            CustomInput(
              hintText: 'Nama Depan',
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

      Widget lastName() {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nama Belakang",
              style: darkGreyTextStyle.copyWith(
                fontSize: 13.sp,
                fontWeight: semibold,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            CustomInput(
              hintText: 'Nama Belakang',
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

      Widget idNumber() {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nomor KTP",
              style: darkGreyTextStyle.copyWith(
                fontSize: 13.sp,
                fontWeight: semibold,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            CustomInput(
              hintText: 'Nomor KTP',
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

      Widget bornPlace() {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Tempat Lahir",
              style: darkGreyTextStyle.copyWith(
                fontSize: 13.sp,
                fontWeight: semibold,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            CustomInput(
              hintText: 'Tempat Lahir',
              hintColor: kDarkGreyColor,
              filled: true,
            ),
            SizedBox(
              height: 12.h,
            ),
          ],
        );
      }

      Widget bornDay() {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Tanggal Lahir",
              style: darkGreyTextStyle.copyWith(
                fontSize: 13.sp,
                fontWeight: semibold,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Container(
              width: double.infinity,
              // height: 50.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              child: DateTimePicker(
                initialValue: '',
                style: greyTextStyle.copyWith(
                  fontSize: 12.sp,
                  color: kDarkGreyColor,
                  fontWeight: light,
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 18.w,
                    vertical: 15.h,
                  ),
                  border: InputBorder.none,
                  hintText: 'Tanggal Lahir',
                  hintStyle: TextStyle(
                    color: kDarkGreyColor,
                    fontWeight: light,
                    fontSize: 12.sp,
                  ),
                  filled: true,
                  fillColor: kGreyColor,
                  focusColor: kDarkGreyColor,
                ),
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
          ],
        );
      }

      Widget address() {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Alamat",
              style: darkGreyTextStyle.copyWith(
                fontSize: 13.sp,
                fontWeight: semibold,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            CustomInput(
              hintText: 'Alamat',
              hintColor: kDarkGreyColor,
              filled: true,
            ),
            SizedBox(
              height: 12.h,
            ),
          ],
        );
      }

      Widget residentAddress() {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Alamat Domisili",
              style: darkGreyTextStyle.copyWith(
                fontSize: 13.sp,
                fontWeight: semibold,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            CustomInput(
              hintText: 'Alamat Domisili',
              hintColor: kDarkGreyColor,
              filled: true,
            ),
            SizedBox(
              height: 12.h,
            ),
          ],
        );
      }

      Widget emailAddress() {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Email",
              style: darkGreyTextStyle.copyWith(
                fontSize: 13.sp,
                fontWeight: semibold,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            CustomInput(
              hintText: 'Email',
              hintColor: kDarkGreyColor,
              filled: true,
            ),
            SizedBox(
              height: 12.h,
            ),
          ],
        );
      }

      Widget phoneNumber() {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nomor Telefon",
              style: darkGreyTextStyle.copyWith(
                fontSize: 13.sp,
                fontWeight: semibold,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            CustomInput(
              hintText: 'Nomor Telefon',
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
        ),
        child: Column(
          children: [
            firstName(),
            lastName(),
            idNumber(),
            bornPlace(),
            bornDay(),
            address(),
            residentAddress(),
            emailAddress(),
            phoneNumber(),
          ],
        ),
      );
    }

    Widget button() {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 138.w,
              margin: EdgeInsets.only(
                top: 12.h,
                bottom: 32.h,
              ),
              child: CustomButtonBorder(
                title: 'Reset',
                titleColor: kDarkGreyColor,
                onPressed: () {},
                borderColor: kDarkGreyColor,
                borderWidth: 1,
                fontWeight: light,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  title: 'Batal',
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
                              right: defaultMargin.w,
                              left: defaultMargin.w,
                            ),
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          CustomButton(
                            title: 'Lanjutkan',
                            onPressed: () => Navigator.pop(context, 'OK'),
                            color: kPrimaryColor,
                            textStyle: blackTextStyle,
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
                  color: kRedColor,
                  textStyle: whiteTextStyle,
                  width: 138.w,
                ),
                SizedBox(
                  width: 12.w,
                ),
                CustomButton(
                  title: 'Lanjutkan',
                  onPressed: () {},
                  color: kPrimaryColor,
                  textStyle: blackTextStyle,
                  width: 138.w,
                ),
              ],
            ),
            SizedBox(
              height: 36.h,
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
