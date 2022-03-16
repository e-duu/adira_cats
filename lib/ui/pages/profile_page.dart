import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_input.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:adira_cats/ui/widgets/custom_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sms_autofill/sms_autofill.dart';
class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget navbar(){
      return Container(
        child: CustomNavbar(
          text: "Profil Saya",
          preffixWidget: IconButton(
            onPressed: () => {},
            icon: libraryIcon
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
                width: 2,
                color: kGreyColor
              ),
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/image_user.png",
                ),
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 42,
                          height: 42,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: kPrimaryColor,
                          ),
                          child: Icon(
                            Icons.edit_outlined
                          ),
                        ),
                      ),
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
                  fontSize: 18,
                  fontWeight: bold,
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.edit_outlined
                ),
                onPressed: () {},
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
                fontSize: 13,
                fontWeight: semibold,
              ),
            ),
            CustomInput(
              readOnly: true,
              hintText: "edward999", 
              hintColor: kBlackColor,
              margin: EdgeInsets.only(
                top: 12,
              ),
              width: double.infinity,
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "Password",
              style: darkGreyTextStyle.copyWith(
                fontSize: 13,
                fontWeight: semibold,
              ),
            ),
            CustomInput(
              readOnly: true,
              hintText: "*******", 
              hintColor: kBlackColor,
              margin: EdgeInsets.only(
                top: 12,
              ),
              width: double.infinity,
            ),
            SizedBox(
              height: 12,
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
                top: 12,
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
                      readOnly: true,
                      hintText: "Jakarta", 
                      hintColor: kBlackColor, 
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
                      readOnly: true,
                      hintText: "29 Februari 1996", 
                      hintColor: kBlackColor, 
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
              readOnly: true,
              hintColor: kBlackColor,
              hintText: "Jln. Raya Bau Petrikor no.8, Kec. Camat, Kab. Kabup, Provinsi DKI Jakarta",
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
                      readOnly: true,
                      hintText: "Email", 
                      hintColor: kBlackColor, 
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
                      readOnly: true,
                      hintText: "Nomor Telepon",
                      hintColor: kBlackColor, 
                      margin: EdgeInsets.only(
                        top: 12.h,
                      ),
                      width: 172.w,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget buttonLogout(){
      return Container(
        child: CustomButtonBorder(
          title: "Logout",
          margin: EdgeInsets.symmetric(
            vertical: 18
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
                  top: 10,
                ),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 20
                ),
                title: Container(
                  margin: EdgeInsets.only(
                    top: 48,
                  ),
                  child: Text(
                    'Logout?',
                    style: blackTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                content: Text(
                  'Kode telah dikirim ulang ke email Anda.',
                  style: blackTextStyle.copyWith(
                    fontSize: 13,
                  ),
                  textAlign: TextAlign.center,
                ),
                actions: <Widget>[
                  CustomButtonBorder(
                    title: "Kembali",
                    titleColor: kDarkGreyColor,
                    onPressed: () => Navigator.pop(context),
                    borderColor: kDarkGreyColor,
                    borderWidth: 2,
                    fontWeight: light,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  CustomButton(
                    title: 'Ok',
                    onPressed: () {},
                    color: kRedColor,
                  ),
                ],
                actionsPadding: EdgeInsets.only(
                  bottom: 10,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
            ),
          ),
        ),
      );
    }
    
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            formInput(),
            buttonLogout(),
          ],
        ),
      ),
    );
  }
}
