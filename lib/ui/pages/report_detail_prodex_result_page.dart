import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_detail_report.dart';
import 'package:adira_cats/ui/widgets/custom_drawer.dart';
import 'package:adira_cats/ui/widgets/custom_dropdown.dart';
import 'package:adira_cats/ui/widgets/custom_dropdown_border.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';

class ReportDetailProdexResultPage extends StatelessWidget {
    final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

    ReportDetailProdexResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget navbar() {
      return Container(
        child: CustomNavbar(
          text: "Prodex",
          preffixWidget: GestureDetector(
            onTap: () {
              _scaffoldKey.currentState!.openDrawer();
            },
            child: Icon(Icons.subject_sharp),
          ),
          suffixWidget: GestureDetector(
            onTap: () {},
            child: Container(
              width: 27.w,
              height: 26.h,
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
        top: 24.h,
        right: 36.w,
        left: 36.w,
      ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomDropdown(
              items: ['pilih 1', 'pilih 2', 'pilih 3'], 
              hintText: 'JAKARTA'
            ),
            SizedBox(height: 12.h,),
            CustomDropdown(
              items: ['pilih 1', 'pilih 2', 'pilih 3'], 
              hintText: 'JAKARTA PUSAT'
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 12.h
              ),
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
          horizontal: 36.w,
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
                    // width: 132.w,
                  ),
                ),
                SizedBox(width: 12.h,),
                Container(
                  width: 138.w,
                  child: CustomDropdownBorder(
                    items: ['pilih 1', 'pilih 2', 'pilih 3'], 
                    hintText: '1 Maret 2022', 
                    // width: 132.w,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: defaultMargin,
              ),
              child: StyledText(
                text: '<bold>1</bold> Prodex telah ditemukan.',
                tags: {
                  'bold': StyledTextTag(
                    style: TextStyle(
                      fontWeight: bold,
                      fontSize: 13.sp
                    ),
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

    Widget externalName(){
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: 24.w,
        ),
        child: CustomDetailReport(
          imageUrl: 'assets/icon_prodex.png',
          title: "Nama Eksternal : Prodex1234",
        ),
      );
    }
    
    Widget button() {
      return Container(
        margin: EdgeInsets.only(
          left: 36.w,
          right: 36.w,
          top: 100.h,
          bottom: 36.h,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButtonBorder(
              title: 'Kembali', 
              titleColor: kDarkGreyColor, 
              onPressed: (){}, 
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
       
          drawer : Container(
            width: 300,
            height: 760,
            child: ClipRRect(
               borderRadius: BorderRadius.only(
          topRight: Radius.circular(35), bottomRight: Radius.circular(35)),
              child: CustomDrawer()
              ),
          ),
                drawerEnableOpenDragGesture : true,
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
