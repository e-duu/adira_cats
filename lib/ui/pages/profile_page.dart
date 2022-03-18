import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
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
          preffixWidget: GestureDetector(
            onTap: () {},
            child: Icon(Icons.subject_sharp),
          ),
          suffixWidget: SizedBox(),
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
              border: Border.all(
                width: 2.w,
                color: kGreyColor,
              ),
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/image_user.png",
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: kPrimaryColor,
                      ),
                      child: Icon(Icons.edit_outlined),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Edward Einselton",
                style: blackTextStyle.copyWith(
                  fontSize: 18.sp,
                  fontWeight: bold,
                ),
              ),
              IconButton(
                icon: Icon(Icons.edit_outlined),
                onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => SingleChildScrollView(
                    child: Container(
                      width: double.infinity,
                      child: AlertDialog(
                        titlePadding: EdgeInsets.only(
                          top: 10.h,
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 20.h,
                        ),
                        title: Container(
                          margin: EdgeInsets.only(
                            top: 48.h,
                          ),
                          child: Text(
                            'Ganti Nama',
                            style: blackTextStyle.copyWith(
                              fontWeight: bold,
                              fontSize: 18.sp,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        content: Container(
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(
                            horizontal: 36.w,
                          ),
                          child: Column(
                            children: [
                              Text(
                                "Nama Depan",
                                style: darkGreyTextStyle.copyWith(
                                  fontSize: 13.sp,
                                  fontWeight: semibold,
                                ),
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              CustomInput(
                                hintText: "Nama Depan",
                                hintColor: kDarkGreyColor,
                                value: "Edward",
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              Text(
                                "Nama Belakang",
                                style: darkGreyTextStyle.copyWith(
                                  fontSize: 13.sp,
                                  fontWeight: semibold,
                                ),
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              CustomInput(
                                hintText: "Nama Belakang",
                                hintColor: kDarkGreyColor,
                                value: "Einselton",
                              )
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          Container(
                            width: 380.w,
                            margin: EdgeInsets.only(
                              right: 36.w,
                              left: 36.w,
                              bottom: 48.h,
                            ),
                            child: Column(
                              children: [
                                CustomButtonBorder(
                                  title: "Batalkan",
                                  titleColor: kDarkGreyColor,
                                  onPressed: () => Navigator.pop(context),
                                  borderColor: kDarkGreyColor,
                                  borderWidth: 2,
                                  fontWeight: light,
                                ),
                                SizedBox(
                                  height: 12.h,
                                ),
                                CustomButton(
                                  title: 'Tetap Edit',
                                  onPressed: () {},
                                  color: kRedColor,
                                  textStyle: whiteTextStyle,
                                ),
                              ],
                            ),
                          ),
                        ],
                        actionsPadding: EdgeInsets.only(
                          bottom: 10.h,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.r),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
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
              "User ID",
              style: darkGreyTextStyle.copyWith(
                fontSize: 13.sp,
                fontWeight: semibold,
              ),
            ),
            CustomInput(
              readOnly: true,
              hintText: "edward999",
              hintColor: kBlackColor,
              margin: EdgeInsets.only(
                top: 12.h,
              ),
              width: double.infinity,
            ),
            SizedBox(
              height: 12.h,
            ),
            Text(
              "Password",
              style: darkGreyTextStyle.copyWith(
                fontSize: 13.sp,
                fontWeight: semibold,
              ),
            ),
            CustomInput(
              readOnly: true,
              hintText: "*******",
              hintColor: kBlackColor,
              margin: EdgeInsets.only(
                top: 12.h,
              ),
              width: double.infinity,
            ),
            SizedBox(
              height: 12.h,
            ),
            Text(
              "Nomor KTP",
              style: darkGreyTextStyle.copyWith(
                fontSize: 13.sp,
                fontWeight: semibold,
              ),
            ),
            CustomInput(
              readOnly: true,
              hintText: "9999 9999 9999",
              hintColor: kBlackColor,
              margin: EdgeInsets.only(
                top: 12.h,
              ),
              width: double.infinity,
            ),
            SizedBox(
              height: 12.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
                      readOnly: true,
                      hintText: "Jakarta",
                      hintColor: kBlackColor,
                      margin: EdgeInsets.only(
                        top: 12.h,
                      ),
                      width: 138.w,
                    ),
                  ],
                ),
                SizedBox(
                  width: 12,
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
                      readOnly: true,
                      hintText: "29 Februari 1996",
                      hintColor: kBlackColor,
                      margin: EdgeInsets.only(
                        top: 12.h,
                      ),
                      width: 138.w,
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
              readOnly: true,
              hintColor: kBlackColor,
              hintText:
                  "Jln. Raya Bau Petrikor no.8, Kec. Camat, Kab. Kabup, Provinsi DKI Jakarta",
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
              readOnly: true,
              hintColor: kBlackColor,
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
              mainAxisAlignment: MainAxisAlignment.center,
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
                      readOnly: true,
                      hintText: "edward@gmail.com",
                      hintColor: kBlackColor,
                      margin: EdgeInsets.only(
                        top: 12.h,
                      ),
                      width: 138.w,
                    ),
                  ],
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nomer Telepon",
                      style: darkGreyTextStyle.copyWith(
                        fontSize: 13.sp,
                        fontWeight: semibold,
                      ),
                    ),
                    CustomInput(
                      readOnly: true,
                      hintText: "0813261392",
                      hintColor: kBlackColor,
                      margin: EdgeInsets.only(
                        top: 12.h,
                      ),
                      width: 138.w,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget buttonLogout() {
      return Container(
        child: CustomButtonBorder(
          title: "Logout",
          margin: EdgeInsets.symmetric(
            vertical: 18.h,
            horizontal: 36.w,
          ),
          titleColor: kRedColor,
          borderColor: kRedColor,
          borderWidth: 2,
          fontWeight: light,
          onPressed: () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => Container(
              width: double.infinity,
              child: AlertDialog(
                titlePadding: EdgeInsets.only(
                  top: 10.h,
                ),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 20.h,
                ),
                title: Container(
                  margin: EdgeInsets.only(
                    top: 48.h,
                  ),
                  child: Text(
                    'Logout?',
                    style: blackTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 18.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                content: Container(
                  width: 200.w,
                  child: Text(
                    'Anda yakin ingin logout?',
                    style: blackTextStyle.copyWith(
                      fontSize: 13.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                actions: <Widget>[
                  Container(
                    width: 380.w,
                    margin: EdgeInsets.only(
                      right: 36.w,
                      left: 36.w,
                      bottom: 48.h,
                    ),
                    child: Column(
                      children: [
                        CustomButtonBorder(
                          title: "Kembali",
                          titleColor: kDarkGreyColor,
                          onPressed: () => Navigator.pop(context),
                          borderColor: kDarkGreyColor,
                          borderWidth: 2,
                          fontWeight: light,
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        CustomButton(
                          title: 'Logout',
                          onPressed: () {},
                          color: kRedColor,
                          textStyle: whiteTextStyle,
                        ),
                      ],
                    ),
                  ),
                ],
                actionsPadding: EdgeInsets.only(
                  bottom: 10.h,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.r),
                ),
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              navbar(),
              profile(),
              formInput(),
              buttonLogout(),
            ],
          ),
        ),
      ),
    );
  }
}
