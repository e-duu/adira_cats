import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_input_search.dart';
import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget navbar() {
      return Container(
        width: double.infinity,
        height: 163.h,
        margin: EdgeInsets.only(
          bottom: 20.h,
        ),
        padding: EdgeInsets.only(
          bottom: 40.h,
          top: 36.h,
          left: 36.w,
          right: 36.w,
        ),
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(18.r),
            bottomRight: Radius.circular(18.r),
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () => {}, icon: Icon(Icons.subject_sharp)),
                Container(
                  height: 16.h,
                  width: 210.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                    "assets/adira_logo_white.png",
                  ))),
                ),
                Container(
                  width: 48.w,
                  height: 48.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/image_user.png",
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 18.h,
            ),
            StyledText(
              text: 'Selamat Datang, <bold>Edward Einselton!</bold>',
              tags: {
                'bold': StyledTextTag(
                  style: TextStyle(fontWeight: extraBold),
                ),
              },
              style: blackTextStyle.copyWith(
                fontWeight: semibold,
                fontSize: 14.sp,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            navbar(),
            CustomInputSearch(
              onPressed: () {},
            ),
          ]),
        ),
      ),
    );
  }
}
