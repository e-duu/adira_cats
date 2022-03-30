import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RequestUnitDonePage extends StatelessWidget {
  const RequestUnitDonePage({Key? key}) : super(key: key);

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
                    margin: EdgeInsets.only(
                      bottom: defaultMargin.h,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/icon_sk_done.png',
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
                        Text(
                          'Surat Tugas Unit berhasil dibuat!',
                          style: blackTextStyle.copyWith(
                            fontWeight: light,
                          ),
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
                horizontal: defaultMargin.h,
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
