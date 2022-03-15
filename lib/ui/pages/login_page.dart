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
        height: 227,
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
                top: 191,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 36,
                vertical: 16,
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
                    height: 14,
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                      // horizontal: 21,
                    ),
                    child: CustomInput(
                      hintText: 'User ID',
                      prefixIcon: Icon(
                        Icons.account_circle_outlined,
                        color: Colors.grey,
                      ),
                      hintColor: kDarkGreyColor,
                      filled: true,
                      margin: EdgeInsets.symmetric(
                        horizontal: 0,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(
                      bottom: 10,
                    ),
                    child: CustomInput(
                      hintText: 'Password',
                      prefixIcon: Icon(
                        Icons.password,
                        color: Colors.grey,
                      ),
                      obscureText: true,
                      borderWidth: 0.w,
                      hintColor: kDarkGreyColor,
                      filled: true,
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomButton(
                          color: kPrimaryColor,
                          title: 'Login',
                          width: 172.w,
                          onPressed: () {},
                        ),
                        SizedBox(
                          width: 12.w,
                        ),
                        CustomButtonBorder(
                          title: 'Reset',
                          titleColor: kBlackColor,
                          onPressed: () {},
                          borderColor: kDarkGreyColor,
                          borderWidth: 2.w,
                          width: 172.w,
                          fontWeight: light,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 36.h,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Lupa Password?',
                            style: darkGreyTextStyle.copyWith(
                              fontSize: 13.sp,
                              fontWeight: light,
                            ),
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Text(
                            'Klik di Sini',
                            style: blackTextStyle.copyWith(
                              fontSize: 13.sp,
                              fontWeight: bold,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Belum punya akun?',
                            style: darkGreyTextStyle.copyWith(
                              fontSize: 13.sp,
                              fontWeight: light,
                            ),
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Text(
                            'Daftar',
                            style: blackTextStyle.copyWith(
                              fontSize: 13.sp,
                              fontWeight: bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 72.h,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          'CATS',
                          style: darkGreyTextStyle.copyWith(
                            fontSize: 11.sp,
                            fontWeight: bold,
                          ),
                        ),
                        Text(
                          'Collection Activity and Tracking System',
                          style: darkGreyTextStyle.copyWith(
                            fontSize: 11.sp,
                            fontWeight: light,
                          ),
                        )
                      ],
                    ),
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
        child: SingleChildScrollView(
          child: Stack(
            children: [
              backgroundImage(),
              content(),
            ],
          ),
        ),
      ),
    );
  }
}
