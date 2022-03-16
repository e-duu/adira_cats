import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_input.dart';
import 'package:flutter/material.dart';
import 'package:adira_cats/shared/theme.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget logo() {
      return Container(
        width: 200,
        height: 34,
        margin: EdgeInsets.only(
          top: 72,
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
          top: 35,
        ),
        child: Column(
          children: [
            Text(
              'Daftar Sebagai Informan',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: bold,
              ),
            ),
            SizedBox(
              height: 24,
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
              right: 36,
              left: 36,
            ),
          ),
          CustomInput(
            hintText: 'Nama Belakang',
            hintColor: kDarkGreyColor,
            margin: EdgeInsets.only(
              top: 12,
              right: 36,
              left: 36,
            ),
          ),
          CustomInput(
            hintText: 'Nomor KTP',
            hintColor: kDarkGreyColor,
            margin: EdgeInsets.only(
              top: 12,
              right: 36,
              left: 36,
            ),
          ),
          CustomInput(
            hintText: 'Tempat Lahir',
            hintColor: kDarkGreyColor,
            margin: EdgeInsets.only(
              top: 12,
              right: 36,
              left: 36,
            ),
          ),
          CustomInput(
            hintText: 'Tanggal Lahir',
            hintColor: kDarkGreyColor,
            margin: EdgeInsets.only(
              top: 12,
              right: 36,
              left: 36,
            ),
          ),
          CustomInput(
            hintText: 'Alamat KTP',
            hintColor: kDarkGreyColor,
            margin: EdgeInsets.only(
              top: 12,
              right: 36,
              left: 36,
            ),
          ),
          CustomInput(
            hintText: 'Alamat Domisili',
            hintColor: kDarkGreyColor,
            margin: EdgeInsets.only(
              top: 12,
              right: 36,
              left: 36,
            ),
          ),
          CustomInput(
            hintText: 'Email',
            hintColor: kDarkGreyColor,
            margin: EdgeInsets.only(
              top: 12,
              right: 36,
              left: 36,
            ),
          ),
          CustomInput(
            hintText: 'Nomor Telepon',
            hintColor: kDarkGreyColor,
            margin: EdgeInsets.only(
              top: 12,
              right: 36,
              left: 36,
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
              height: 34,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButtonBorder(
                  title: 'Batal',
                  onPressed: () {},
                  borderColor: kRedColor,
                  borderWidth: 2,
                  fontWeight: normal,
                  width: 207,
                ),
                SizedBox(
                  width: 12,
                ),
                CustomButtonBorder(
                  title: 'Reset',
                  onPressed: () {},
                  borderColor: kDarkGreyColor,
                  borderWidth: 2,
                  fontWeight: normal,
                  width: 207,
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            CustomButton(
              title: 'Lanjutkan',
              onPressed: () {},
              color: kPrimaryColor,
              margin: EdgeInsets.only(
                right: 36,
                left: 36,
                bottom: 36,
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
