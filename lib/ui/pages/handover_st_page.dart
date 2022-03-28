import 'package:adira_cats/ui/widgets/custom_card_st.dart';
import 'package:adira_cats/ui/widgets/custom_drawer.dart';
import 'package:adira_cats/ui/widgets/custom_input_search.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class HandoverStPage extends StatelessWidget {
    final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
    HandoverStPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Widget navbar() {
      return Container(
       child: CustomNavbar(
          text: "Serah Terima ST",
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

    Widget formSearch() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: 36.w,
          vertical: 24.h,
        ),
        child: CustomInputSearch(
          onPressed: () {},
          hintText: "Cari Nomor Kontak ...",
        ),
      );
    }

    Widget cardNumberSt() {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomCardSt(
            stNumber: "1234 5678",
            contractNumber: "9999 9999 9999",
            notifNew: true,
          ),
          CustomCardSt(
            stNumber: "2234 5678",
            contractNumber: "9999 8888 8888",
            notifNew: false,
          ),
          CustomCardSt(
            stNumber: "3234 5678",
            contractNumber: "9999 8888 7777",
            notifNew: false),
        ],
      );
    }

    return Scaffold(
       key: _scaffoldKey,
       
          // drawer: CustomDrawer(),w
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
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                navbar(),
                formSearch(),
                cardNumberSt(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
