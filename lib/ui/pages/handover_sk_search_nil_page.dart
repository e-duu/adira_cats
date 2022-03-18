import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_card_sk.dart';
import 'package:adira_cats/ui/widgets/custom_input_search.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';

class HandoverSkSearchNilPage extends StatelessWidget {
  const HandoverSkSearchNilPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget navbar() {
      return Container(
        child: CustomNavbar(
          text: "Serah Terima SK",
          preffixWidget: GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.subject_sharp,
            ),
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
                  )
                )
              )
            )
          )
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
          value: '7777',
        ),
      );
    }

    Widget notifSearch() {
      return Container(
        margin: EdgeInsets.only(
          bottom: 36.h
        ),
        child: StyledText(
          text: "Nomor Kontrak tidak ditemukan.",
          textAlign: TextAlign.center,
        ),
      );
    }

    // Widget cardNumberSk(){
    //   return Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       CustomCardSk(
    //         skNumber: "3234 5678",
    //         contractNumber: "9999 8888 7777", 
    //         notifNew: false
    //       ),
    //     ]
    //   );
    // }
    
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                navbar(),
                formSearch(),
                notifSearch(),
                // cardNumberSk(),
              ],
            )
          ),
        ),
      )
    );
  }
}