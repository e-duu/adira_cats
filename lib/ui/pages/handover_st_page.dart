import 'package:adira_cats/ui/widgets/custom_card_handover_st.dart';
import 'package:adira_cats/ui/widgets/custom_card_st.dart';
import 'package:adira_cats/ui/widgets/custom_drawer.dart';
import 'package:adira_cats/ui/widgets/custom_input_search.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:adira_cats/shared/theme.dart';

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
          horizontal: defaultMargin.w,
          vertical: defaultPadding.h,
        ),
        child: CustomInputSearch(
          onPressed: () {},
          hintText: "Cari Nomor Kontrak ...",
          margin: EdgeInsets.all(1),
        ),
      );
    }

    Widget cardNumberSt() {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomCardHandoverSt(
            stNumber: "1234 5678",
            contractNumber: "9999 9999 9999",
            onPressed: (){},
            newHandover: true,
          ),
          CustomCardHandoverSt(
            stNumber: "2234 5678",
            contractNumber: "9999 8888 8888",
            onPressed: (){},
            newHandover: false,
          ),
          CustomCardHandoverSt(
            stNumber: "3234 5678",
            contractNumber: "9999 8888 7777",
            onPressed: (){},
            newHandover: false,
          ),
        ],
      );
    }

    return Scaffold(
      key: _scaffoldKey,
      drawer : Container(
          width: 300,
          height: 760,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
             topRight: Radius.circular(35),
             bottomRight: Radius.circular(35)),
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
