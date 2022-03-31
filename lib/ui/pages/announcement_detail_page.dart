import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnnouncementDetailPage extends StatelessWidget {
  const AnnouncementDetailPage({Key? key}) : super(key: key);

  Widget image() {
    return Container(
      width: double.infinity,
      height: 200.h,
      margin: EdgeInsets.symmetric(
        horizontal: 18.w,
        vertical: defaultMargin.h,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(defaultRadius.r),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/image_announcement.png',
          ),
        ),
      ),
    );
  }

  Widget content() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: defaultPadding.w,
      ),
      child: Column(
        children: [
          ListTile(
            title: Text(
              "Mobile App Adira Finance CATS Terbaru Akan Segera Hadir!",
              style: blackTextStyle.copyWith(
                fontWeight: extraBold,
                fontSize: 18.sp,
              ),
            ),
          ),
          ListTile(
            title: Text(
              '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Bibendum faucibus imperdiet et nam arcu eu tellus. Vel amet rutrum aliquam faucibus egestas elementum. Ipsum eu viverra sed leo eget egestas lacus, interdum pretium. Massa in ullamcorper arcu praesent convallis malesuada pharetra ut massa. Lectus nunc dignissim turpis sit nunc, pellentesque mi, feugiat. Malesuada ornare sed purus integer. Auctor pretium commodo amet mollis. Placerat egestas eget porta id orci mi erat eu. Enim mauris, vitae etiam arcu ac nam gravida amet tellus.''',
              style: darkGreyTextStyle.copyWith(
                fontWeight: light,
                fontSize: 14.sp,
              ),
            ),
          ),
          ListTile(
            title: Text(
              '''Quam lectus ac faucibus aliquam enim morbi. Aliquam cras scelerisque sit diam nunc diam imperdiet. Hendrerit lectus viverra ac et fringilla purus sapien diam. Rhoncus feugiat at nunc massa. Aliquam molestie leo morbi consequat, volutpat, odio semper aliquet tincidunt.''',
              style: darkGreyTextStyle.copyWith(
                fontWeight: light,
                fontSize: 14.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget button() {
    return Container(
      margin: EdgeInsets.only(
        left: defaultMargin.w,
        right: defaultMargin.w,
        top: defaultMargin.h,
        bottom: defaultMargin.h,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButtonBorder(
            title: 'Kembali',
            titleColor: kDarkGreyColor,
            onPressed: () {},
            borderColor: kDarkGreyColor,
            borderWidth: 2,
            fontWeight: light,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              image(),
              content(),
              button(),
            ],
          ),
        ),
      ),
    );
  }
}
