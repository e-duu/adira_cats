import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_input.dart';
import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

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
          top: 49,
          bottom: 10,
        ),
        child: Column(
          children: [
            Text(
              'Lupa Password Anda?',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: bold,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              'Masukkan alamat ID yang terkait dengan akun Anda.',
              style: blackTextStyle.copyWith(
                fontSize: 14,
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
        padding: EdgeInsets.all(2),
        margin: EdgeInsets.only(
          top: 20,
          right: 20,
          left: 20,
        ),
      );
    }

    Widget header() {
      return Container(
        child: Column(
          children: [
            logo(),
            title(),
            input(),
          ],
        ),
      );
    }

    Widget button() {
      return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButtonBorder(
                  title: 'Kembali',
                  onPressed: () {},
                  color: kWhiteColor,
                  borderColor: kDarkGreyColor,
                  borderWidth: 2,
                  fontWeight: normal,
                  width: 172,
                ),
                SizedBox(
                  width: 12,
                ),
                CustomButtonBorder(
                  title: 'Kembali',
                  onPressed: () {},
                  color: kWhiteColor,
                  borderColor: kDarkGreyColor,
                  borderWidth: 2,
                  fontWeight: normal,
                  width: 172,
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            CustomButton(
              title: 'Submit',
              onPressed: () {},
              color: kPrimaryColor,
              fontWeight: bold,
              margin: EdgeInsets.symmetric(
                horizontal: 20,
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: ListView(
          children: [
            header(),
            button(),
          ],
        ),
      ),
    );
  }
}
