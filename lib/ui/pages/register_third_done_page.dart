import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_logo_adira.dart';
import 'package:adira_cats/ui/widgets/custom_upload_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:adira_cats/shared/theme.dart';

class RegisterThirdDonePage extends StatelessWidget {
  const RegisterThirdDonePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget logo() {
      return Container(
        margin: EdgeInsets.only(
          bottom: 10.h,
        ),
        child: CustomLogoAdira(
          text: 'Daftar Sebagai Informan',
        ),
      );
    }

    Widget uploadImage() {
      return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150.w,
              height: 200.h,
              padding: EdgeInsets.symmetric(
                horizontal: 12.w,
                vertical: 12.h,
              ),
              decoration: BoxDecoration(
                color: kGreyColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(defaultRadius),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/image_upload.png',
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(defaultRadius),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.edit_outlined,
                            color: kBlackColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 16.w,
            ),
            Container(
              width: 150.w,
              height: 200.h,
              padding: EdgeInsets.symmetric(
                horizontal: 12.w,
                vertical: 12.h,
              ),
              decoration: BoxDecoration(
                color: kGreyColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(defaultRadius),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/image_user.png',
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(defaultRadius),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.edit_outlined,
                            color: kBlackColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
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
                  width: 153.w,
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
                  width: 153.w,
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
            uploadImage(),
          ],
        ),
      ),
    );
  }
}
