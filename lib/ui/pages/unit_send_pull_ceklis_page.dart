import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_drawer.dart';
import 'package:adira_cats/ui/widgets/custom_input_check_box.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UnitSendPullCeklisPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  UnitSendPullCeklisPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget navbar() {
      return Container(
        child: CustomNavbar(
          text: "Tarik Kirim Unit - Ceklis",
          preffixWidget: GestureDetector(
            onTap: () {
              _scaffoldKey.currentState!.openDrawer();
            },
            child: Icon(Icons.subject_sharp),
          ),
          suffixWidget: GestureDetector(
            onTap: () {},
            child: Container(
              width: 21.w,
              height: 21.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/icon_arrow_back.png",
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        padding: EdgeInsets.symmetric(
          vertical: 28.h,
          horizontal: defaultMargin.w,
        ),
        child: Column(
          children: [
            CustomInputCheckBox(
              title: 'Aksesoris Tambahan',
            ),
            CustomInputCheckBox(
              title: 'Accu',
            ),
            CustomInputCheckBox(
              title: 'Alarm',
            ),
            CustomInputCheckBox(
              title: 'Bak',
            ),
            CustomInputCheckBox(
              title: 'Ban',
            ),
            CustomInputCheckBox(
              title: 'Ban Cadangan',
            ),
          ],
        ),
      );
    }

    Widget bottomButton() {
      return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButtonBorder(
                  title: 'Batal',
                  titleColor: kRedColor,
                  onPressed: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => Container(
                      child: AlertDialog(
                        titlePadding: EdgeInsets.symmetric(
                          vertical: defaultPadding.h,
                        ),
                        title: Container(
                          margin: EdgeInsets.only(
                            top: 48.h,
                          ),
                          child: Text(
                            'Batalkan?',
                            style: blackTextStyle.copyWith(
                              fontWeight: bold,
                              fontSize: 18.sp,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        content: Text(
                          'Anda yakin ingin membatalkan?',
                          style: blackTextStyle.copyWith(
                            fontSize: 13.sp,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        actions: <Widget>[
                          CustomButtonBorder(
                            titleColor: kRedColor,
                            title: 'Batalkan',
                            onPressed: () {},
                            borderColor: kRedColor,
                            borderWidth: 2.r,
                            fontWeight: normal,
                            width: 308.w,
                            margin: EdgeInsets.only(
                              right: defaultMargin.w,
                              left: defaultMargin.w,
                            ),
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          CustomButton(
                            title: 'Lanjutkan',
                            onPressed: () => Navigator.pop(context, 'OK'),
                            color: kPrimaryColor,
                            textStyle: blackTextStyle,
                            width: 308.w,
                            margin: EdgeInsets.only(
                              right: defaultMargin.w,
                              left: defaultMargin.w,
                              bottom: 48.h,
                            ),
                          ),
                        ],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.r),
                        ),
                      ),
                    ),
                  ),
                  borderColor: kRedColor,
                  borderWidth: 2.r,
                  fontWeight: normal,
                  width: 138.w,
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
                  width: 138.w,
                ),
              ],
            ),
            SizedBox(
              height: 12.h,
            ),
            CustomButton(
              margin: EdgeInsets.only(
                right: defaultMargin.w,
                left: defaultMargin.w,
                bottom: defaultMargin.h,
              ),
              title: 'Submit',
              onPressed: () {},
              color: kPrimaryColor,
              textStyle: blackTextStyle,
            ),
          ],
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
         key: _scaffoldKey,
        drawer : Container(
        width: 300,
        height: 760,
        child: ClipRRect(
        borderRadius: BorderRadius.only(
         topRight: Radius.circular(35),
         bottomRight: Radius.circular(35)
        ),
        child: CustomDrawer()
        ),
      ),
      drawerEnableOpenDragGesture : true,
      endDrawerEnableOpenDragGesture: false,
        body: SingleChildScrollView(
          child: Column(
            children: [
              navbar(),
              content(),
              bottomButton(),
            ],
          ),
        ),
      ),
    );
  }
}
