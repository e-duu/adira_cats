import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:styled_text/styled_text.dart';

class ResetPasswordDonePage extends StatelessWidget {
  const ResetPasswordDonePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 140.w,
                    height: 140.h,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/icon_done_green.png',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          'Berhasil!',
                          style: blackTextStyle.copyWith(
                            fontWeight: bold,
                            fontSize: 18.sp,
                          ),
                        ),
                        SizedBox(
                          height: defaultPadding.h,
                        ),
                        StyledText(
                          text:
                              'Password User ID <bold>edward999</bold> berhasil diperbaharui.',
                          tags: {
                            'bold': StyledTextTag(
                              style: TextStyle(
                                fontWeight: bold,
                              ),
                            ),
                          },
                          style: blackTextStyle.copyWith(
                            fontWeight: light,
                            fontSize: 13.sp,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              bottom: defaultMargin.h,
            ),
            child: CustomButton(
              title: 'Ok',
              onPressed: () {},
              margin: EdgeInsets.symmetric(
                horizontal: defaultMargin.w,
              ),
              color: kPrimaryColor,
              textStyle: blackTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
