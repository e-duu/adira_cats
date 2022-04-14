import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_drawer.dart';
import 'package:adira_cats/ui/widgets/custom_dropdown.dart';
import 'package:adira_cats/ui/widgets/custom_dropdown_border.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class ReportDetailStPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  ReportDetailStPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget navbar() {
      return Container(
        child: CustomNavbar(
          text: "Surat Tugas",
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
          children: [
            CustomDropdown(items: [
              'pilih 1',
              'pilih 2',
              'pilih 3',
            ], hintText: 'Pilih Area ...'),
            SizedBox(
              height: 12.h,
            ),
            CustomDropdown(items: [
              'pilih 1',
              'pilih 2',
              'pilih 3',
            ], hintText: 'Pilih Cabang ...'),
          ],
        ),
      );
    }

    Widget period() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin.w,
          vertical: 12.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                'Periode (Awal s/d Akhir)',
                style: darkGreyTextStyle.copyWith(
                  fontSize: 13.sp,
                  fontWeight: semibold,
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget selectPeriod() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin.w,
        ),
        child: Row(
          children: [
            Container(
              width: 138.w,
              child: CustomDropdownBorder(
                items: [
                  'pilih 1',
                  'pilih 2',
                  'pilih 3',
                ],
                hintText: 'Periode Awal',
                // width: 132.w,
              ),
            ),
            SizedBox(
              width: 12.h,
            ),
            Container(
              width: 138.w,
              child: CustomDropdownBorder(
                items: [
                  'pilih 1',
                  'pilih 2',
                  'pilih 3',
                ],
                hintText: 'Periode Awal',
                // width: 132.w,
              ),
            ),
          ],
        ),
      );
    }

    Widget button() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin.w,
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
      resizeToAvoidBottomInset: false,
      floatingActionButton: Visibility(
        child: button(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Container(
          child: ListView(
            children: [
              navbar(),
              selectArea(),
              period(),
              selectPeriod(),
            ],
          ),
        ),
      ),
    );
  }
}
