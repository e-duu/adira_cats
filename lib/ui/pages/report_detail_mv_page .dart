import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_drawer.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_input_search.dart';

class ReportDetailMvPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  ReportDetailMvPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget navbar() {
      return Container(
        child: CustomNavbar(
          text: "Monitoring Workflow",
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

      // drawer: CustomDrawer(),
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
              SizedBox(
                height: defaultPadding.h,
              ),
              CustomInputSearch(
                onPressed: () {},
                hintText: 'Cari Nomor Workflow ...',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
