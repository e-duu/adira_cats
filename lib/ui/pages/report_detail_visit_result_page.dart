import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_drawer.dart';
import 'package:adira_cats/ui/widgets/custom_dropdown.dart';
import 'package:adira_cats/ui/widgets/custom_dropdown_border.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';

class ReportDetailVisitResultPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  ReportDetailVisitResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget navbar() {
      return Container(
        child: CustomNavbar(
          text: "Input Kunjungan",
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

    Widget selectArea() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultPadding.h,
          right: defaultMargin.w,
          left: defaultMargin.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomDropdown(
                items: ['pilih 1', 'pilih 2', 'pilih 3'], hintText: 'JAKARTA'),
            SizedBox(
              height: 12.h,
            ),
            CustomDropdown(
                items: ['pilih 1', 'pilih 2', 'pilih 3'],
                hintText: 'JAKARTA PUSAT'),
            Container(
              margin: EdgeInsets.symmetric(vertical: 12.h),
              child: Text(
                'Periode (Awal s/d Akhir)',
                style: darkGreyTextStyle.copyWith(
                  fontSize: 13.sp,
                  fontWeight: semibold,
                ),
                textAlign: TextAlign.start,
              ),
            ),
          ],
        ),
      );
    }

    Widget selectPeriod() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin.w,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 138.w,
                  child: CustomDropdownBorder(
                    items: ['pilih 1', 'pilih 2', 'pilih 3'],
                    hintText: '1 Januari 2022',
                  ),
                ),
                SizedBox(
                  width: 12.h,
                ),
                Container(
                  width: 138.w,
                  child: CustomDropdownBorder(
                    items: ['pilih 1', 'pilih 2', 'pilih 3'],
                    hintText: '1 Maret 2022',
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: defaultMargin,
              ),
              child: StyledText(
                text: '<bold>1</bold> Input Kunjungan telah ditemukan.',
                tags: {
                  'bold': StyledTextTag(
                    style: TextStyle(fontWeight: bold, fontSize: 13.sp),
                  ),
                },
                style: darkGreyTextStyle.copyWith(
                  fontWeight: light,
                  fontSize: 13.sp,
                ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      );
    }

    Widget externalName() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultPadding.w,
        ),
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 27.w,
          vertical: 23.h,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: kLigthGrayColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Row(
          children: [
            Container(
              width: 30.w,
              height: 30.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon_input_kunjungan.png'),
                ),
              ),
            ),
            SizedBox(
              width: 21.w,
            ),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nomor Kunjungan : 123',
                      style: blackTextStyle.copyWith(
                        fontWeight: bold,
                        fontSize: 12.sp,
                      ),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      'Nomor Kontrak : 9999 8888 6666',
                      style: blackTextStyle.copyWith(
                        fontWeight: bold,
                        fontSize: 12.sp,
                      ),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      "Klik untuk lihat detail",
                      style: darkGreyTextStyle.copyWith(
                          fontWeight: light,
                          fontSize: 11.sp,
                          fontStyle: FontStyle.italic),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget button() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin.w,
          right: defaultMargin.w,
          top: 100.h,
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
              borderWidth: 2.w,
              fontWeight: light,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      key: _scaffoldKey,
      drawer: Container(
        width: 300.w,
        height: 760.h,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(35),
            bottomRight: Radius.circular(35),
          ),
          child: CustomDrawer(),
        ),
      ),
      drawerEnableOpenDragGesture: true,
      endDrawerEnableOpenDragGesture: false,
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                navbar(),
                selectArea(),
                selectPeriod(),
                externalName(),
                button(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
