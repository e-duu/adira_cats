import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_input.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: 300.h,
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
              margin: EdgeInsets.only(top: 162.h, right: 6.w, left: 6.w),
              padding: EdgeInsets.symmetric(
                horizontal: 24.w,
              ),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(18.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 79.w,
                        height: 95.h,
                        margin: EdgeInsets.only(
                          top: 24.h,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            // fit: BoxFit.cover,
                            image: AssetImage("assets/image_splash1.png"),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Text(
                        'Login',
                        style: blackTextStyle.copyWith(
                          fontSize: 18.w,
                          fontWeight: bold,
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Container(
                    width: double.infinity,
                    child: CustomInput(
                      hintText: 'User ID',
                      prefixIcon: Icon(
                        Icons.account_circle_outlined,
                        color: Colors.grey,
                      ),
                      hintColor: kDarkGreyColor,
                      filled: true,
                    ),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Container(
                    width: double.infinity,
                    child: CustomInput(
                      hintText: 'Password',
                      prefixIcon: Icon(
                        Icons.password,
                        color: Colors.grey,
                      ),
                      obscureText: true,
                      borderWidth: 0.r,
                      hintColor: kDarkGreyColor,
                      filled: true,
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton(
                          title: 'Login',
                          onPressed: () {
                            Navigator.pushNamed(context, '/main');
                          },
                          width: 144.w,
                          color: kBlackColor,
                          textStyle: whiteTextStyle,
                        ),
                        SizedBox(
                          width: 12.w,
                        ),
                        CustomButtonBorder(
                          title: 'Reset',
                          titleColor: kBlackColor,
                          onPressed: () {},
                          borderColor: kBlackColor,
                          borderWidth: 2.w,
                          width: 144.w,
                          fontWeight: light,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Sudah Verifikasi?',
                            style: darkGreyTextStyle.copyWith(
                              fontSize: 13.sp,
                              fontWeight: light,
                            ),
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Text(
                            'Verifikasi',
                            style: blackTextStyle.copyWith(
                              fontSize: 13.sp,
                              fontWeight: bold,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
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
                        height: 6.h,
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
                  Container(
                    width: 105.w,
                    height: 24.h,
                    margin: EdgeInsets.symmetric(vertical: 22.h),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage("assets/adira_logo_white.png"),
                      ),
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
      backgroundColor: kBlackColor,
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
