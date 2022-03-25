import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_input_search.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_google_maps.dart';

class ShareUnitPage extends StatelessWidget {
  const ShareUnitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget navbar() {
      return Container(
        child: CustomNavbar(
          text: "Bagikan",
          preffixWidget: SizedBox(),
          suffixWidget: SizedBox(),
        ),
      );
    }

    Widget formSearch() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin.w,
        ),
        child: CustomInputSearch(
          onPressed: () {},
          margin: EdgeInsets.only(
            top: 24.h,
          ),
          hintText: "Cari Cabang ...",
        ),
      );
    }

    Widget goMap() {
      return Container(
        height: 600.h,
        width: 380.w,
        margin: EdgeInsets.only(
          top: 18.h,
          left: 24.w,
          right: 24.w,
        ),
        child: CustomGoogleMaps(),
      );
    }

    /// NOTE: BUTTON BACK
    Widget buttonBack() {
      return Container(
        child: CustomButtonBorder(
          title: "Kembali",
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin.w,
            vertical: defaultMargin.h,
          ),
          titleColor: kDarkGreyColor,
          borderColor: kDarkGreyColor,
          borderWidth: 2,
          fontWeight: light,
          onPressed: () {},
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              navbar(),
              formSearch(),
              goMap(),
              buttonBack(),
            ],
          ),
        ),
      ),
    );
  }
}
