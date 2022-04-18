import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:flutter/material.dart';
import 'package:adira_cats/shared/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:styled_text/styled_text.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

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
                          'assets/icon_error.png',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          'Terjadi Kesalahan!',
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
                              'Maaf, laman tidak bisa dimuat.\nMungkin laman sedang <bold>dalam perbaikan</bold>,\natau mungkin <bold>koneksi Anda</bold> sedang buruk.',
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
              right: defaultMargin.w,
              left: defaultMargin.w,
            ),
            child: CustomButtonBorder(
              title: 'Kembali',
              titleColor: kBlackColor,
              onPressed: () {},
              borderColor: kBlackColor,
              borderWidth: 1,
              fontWeight: light,
            ),
          ),
        ],
      ),
    );
  }
}
