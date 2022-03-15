import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_input.dart';
import 'package:adira_cats/ui/widgets/custom_logo_adira.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: 327.h,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/image_login.png',
            ),
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: 291.h,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 36.w,
                vertical: 16.h,
              ),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomLogoAdira(text: 'Login'),
                  SizedBox(
                    height: 24.h,
                  ),
                  Container(
                    width: double.infinity,
                    // padding: EdgeInsets.symmetric(
                    //   vertical: 10,
                    //   // horizontal: 21,
                    // ),
                    child: CustomInput(
                      hintText: 'User ID',
                      prefixIcon: Icon(
                        Icons.account_circle_outlined,
                        color: Colors.grey,
                      ),
                      hintColor: kDarkGreyColor,
                      filled: true,
                      margin: EdgeInsets.only(bottom: 12.h),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(
                      bottom: 24.h,
                    ),
                    child: CustomInput(
                      hintText: 'Password',
                      prefixIcon: Icon(
                        Icons.password,
                        color: Colors.grey,
                      ),
                      obscureText: true,
                      borderWidth: 0,
                      hintColor: kDarkGreyColor,
                      filled: true,
                      margin: EdgeInsets.symmetric(
                        horizontal: 0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomButton(
                          color: kPrimaryColor,
                          title: 'Login',
                          width: 162,
                          onPressed: () {},
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        CustomButtonBorder(
                          title: 'Reset',
                          titleColor: kBlackColor,
                          onPressed: () {},
                          borderColor: kDarkGreyColor,
                          borderWidth: 2,
                          width: 162,
                          fontWeight: light,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Lupa Password?',
                        style: darkGreyTextStyle.copyWith(
                          fontSize: 13,
                          fontWeight: light,
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        'Klik di Sini',
                        style: blackTextStyle.copyWith(
                          fontSize: 13,
                          fontWeight: bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Belum punya akun?',
                        style: darkGreyTextStyle.copyWith(
                          fontSize: 13,
                          fontWeight: light,
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        'Daftar',
                        style: blackTextStyle.copyWith(
                          fontSize: 13,
                          fontWeight: bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Column(
                    children: [
                      Text(
                        'CATS',
                        style: darkGreyTextStyle.copyWith(
                          fontSize: 11,
                          fontWeight: bold,
                        ),
                      ),
                      Text(
                        'Collection Activity and Tracking System',
                        style: darkGreyTextStyle.copyWith(
                          fontSize: 11,
                          fontWeight: light,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: Stack(
          children: [
            backgroundImage(),
            content(),
          ],
        ),
      ),
    );
  }
}
