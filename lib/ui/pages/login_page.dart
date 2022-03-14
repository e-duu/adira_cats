import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_input.dart';
import 'package:adira_cats/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: 327,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/image_login.png',
                ))),
      );
    }

    Widget content() {
      return Container(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 291),
              padding: EdgeInsets.symmetric(
                horizontal: 36,
                vertical: 36,
              ),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 242,
                      height: 40,
                      margin: EdgeInsets.only(top: 36, bottom: 48),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/adira_logo_yellow.png',
                              ))),
                    ),
                    Text(
                      'Login',
                      style: blackTextStyle.copyWith(
                          fontSize: 18, fontWeight: bold),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 21,
                      ),
                      child: CustomInput(
                        hintText: 'User ID',
                        prefixIcon: Icon(
                          Icons.account_circle_outlined,
                          color: Colors.grey,
                        ),
                        hintColor: kDarkGreyColor,
                        filled: true,
                        contentPadding: EdgeInsets.all(2),
                        margin: EdgeInsets.symmetric(horizontal: 0),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 21,
                      ),
                      child: CustomInput(
                        hintText: 'Password',
                        prefixIcon: Icon(
                          Icons.password,
                          color: Colors.grey,
                        ),
                        suffixIcon: Icon(
                          Icons.remove_red_eye_outlined,
                          color: Colors.grey,
                        ),
                        hintColor: kDarkGreyColor,
                        filled: true,
                        contentPadding: EdgeInsets.all(2),
                        margin: EdgeInsets.symmetric(horizontal: 0),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomButton(
                              color: kPrimaryColor,
                              title: 'Login',
                              width: 142,
                              onPressed: () {}),
                          SizedBox(
                            width: 12,
                          ),
                          CustomButtonBorder(
                            title: 'Reset',
                            onPressed: () {},
                            borderColor: kDarkGreyColor,
                            borderWidth: 2,
                            width: 142,
                            fontWeight: light,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 36,
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
                      height: 24,
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
                        )
                      ],
                    ),
                    SizedBox(
                      height: 72,
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
                  ]),
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
