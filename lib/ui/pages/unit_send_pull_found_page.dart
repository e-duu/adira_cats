import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_input_check_box.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UnitSendPullFoundPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  UnitSendPullFoundPage({Key? key}) : super(key: key);

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
              value: 'Spoiler Bride',
              checkBox: true,
            ),
            CustomInputCheckBox(
              title: 'Accu',
              value: 'YUASA Accu',
              checkBox: true,
            ),
            CustomInputCheckBox(
              title: 'Alarm',
              value: 'Denso',
              checkBox: true,
            ),
            CustomInputCheckBox(
              title: 'Bak',
              value: 'N20 Nitrous',
              checkBox: true,
            ),
            CustomInputCheckBox(
              title: 'Ban',
              value: 'Bridgestone Racing Edition',
              checkBox: true,
            ),
            CustomInputCheckBox(
              title: 'Ban Cadangan',
              value: 'Michellin',
              checkBox: true,
            ),
          ],
        ),
      );
    }

    Widget contentBottom(){
      return Container(
        padding: EdgeInsets.only(
          top: defaultPadding.h,
          bottom: defaultMargin.h,
          right: defaultMargin.w,
          left: defaultMargin.w,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButtonBorder(title: 'Batal', titleColor: kRedColor, onPressed: (){}, borderColor: kRedColor, borderWidth: 2, fontWeight: light, width: 172.w,),
                CustomButtonBorder(title: 'Reset', titleColor: kDarkGreyColor, onPressed: (){}, borderColor: kDarkGreyColor, borderWidth: 2, fontWeight: light, width: 172.w,),
              ],
            ),
            CustomButton(title: 'Lanjutkan', onPressed: (){}, color: kPrimaryColor, textStyle: blackTextStyle, fontWeight: bold,),
          ],
        ),
      );
    }
    
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              navbar(),
              content(),
              contentBottom()
            ]
          ),
        ),
      ),
    );
  }
}