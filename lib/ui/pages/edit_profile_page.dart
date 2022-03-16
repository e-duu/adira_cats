import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget photo() {
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
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () => showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => Container(
                            width: double.infinity,
                            child: AlertDialog(
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 20.h),
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
                        child: Container(
                          width: 42,
                          height: 42,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: kPrimaryColor,
                          ),
                          child: Icon(Icons.edit_outlined),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            photo(),
          ],
        ),
      ),
    );
  }
}
