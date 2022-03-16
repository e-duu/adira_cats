import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_input.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:adira_cats/ui/widgets/custom_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget navbar() {
      return Container(
        child: CustomNavbar(
          text: "Profil Saya",
          preffixWidget: IconButton(onPressed: () => {}, icon: libraryIcon),
          suffixWidget: IconButton(
            onPressed: () => {},
            icon: editIcon,
          ),
        ),
      );
    }

    Widget profile() {
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 36.h,
            ),
            width: 160.w,
            height: 160.h,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/image_user.png",
                  ),
                )),
          ),
          SizedBox(
            height: 24.h,
          ),
          Text(
            "Edward Einselton",
            style: blackTextStyle.copyWith(
              fontSize: 18.sp,
              fontWeight: bold,
            ),
          ),
        ],
      );
    }

    Widget formInput() {
      return Container(
        margin: EdgeInsets.only(
          top: 18.h,
          right: 36.w,
          left: 36.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nomor KTP",
              style: darkGreyTextStyle.copyWith(
                fontSize: 13.sp,
                fontWeight: semibold,
              ),
            ),
            CustomInput(
              hintText: "Nomor KTP",
              hintColor: kDarkGreyColor,
              margin: EdgeInsets.only(
                top: 12.h,
              ),
              width: double.infinity,
            ),
            SizedBox(
              height: 12.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tempat Lahir",
                      style: darkGreyTextStyle.copyWith(
                        fontSize: 13.sp,
                        fontWeight: semibold,
                      ),
                    ),
                    CustomInput(
                      hintText: "Tempat Lahir",
                      hintColor: kDarkGreyColor,
                      margin: EdgeInsets.only(
                        top: 12.h,
                      ),
                      width: 172.w,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tanggal Lahir",
                      style: darkGreyTextStyle.copyWith(
                        fontSize: 13.sp,
                        fontWeight: semibold,
                      ),
                    ),
                    CustomInput(
                      hintText: "Tanggal Lahir",
                      hintColor: kDarkGreyColor,
                      margin: EdgeInsets.only(
                        top: 12.h,
                      ),
                      width: 172.w,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 12.h,
            ),
            Text(
              "Alamat KTP",
              style: darkGreyTextStyle.copyWith(
                fontSize: 13.sp,
                fontWeight: semibold,
              ),
            ),
            CustomTextField(
              hintText: "Alamat KTP",
              maxLines: 2,
              margin: EdgeInsets.only(
                top: 12.h,
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Text(
              "Alamat Domisili",
              style: darkGreyTextStyle.copyWith(
                fontSize: 13.sp,
                fontWeight: semibold,
              ),
            ),
            CustomTextField(
              hintText: "Alamat Domisili",
              maxLines: 2,
              margin: EdgeInsets.only(
                top: 12.h,
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email",
                      style: darkGreyTextStyle.copyWith(
                        fontSize: 13.sp,
                        fontWeight: semibold,
                      ),
                    ),
                    CustomInput(
                      hintText: "Email",
                      hintColor: kDarkGreyColor,
                      margin: EdgeInsets.only(
                        top: 12.h,
                      ),
                      width: 172.w,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nomor Telepon",
                      style: darkGreyTextStyle.copyWith(
                        fontSize: 13.sp,
                        fontWeight: semibold,
                      ),
                    ),
                    CustomInput(
                      hintText: "Nomor Telepon",
                      hintColor: kDarkGreyColor,
                      margin: EdgeInsets.only(
                        top: 12.h,
                      ),
                      width: 172.w,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 100.h,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            navbar(),
            profile(),
            formInput(),
          ],
        ),
      ),
    );
  }
}
