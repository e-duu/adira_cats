import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_card_st.dart';
import 'package:adira_cats/ui/widgets/custom_input_search.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';

class HandoverStSearchPage extends StatelessWidget {
  const HandoverStSearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget navbar() {
      return Container(
        child: CustomNavbar(
          text: "Serah Terima ST",
          preffixWidget: GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.subject_sharp,
            ),
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
          value: '7777',
          margin: EdgeInsets.all(1),
        ),
      );
    }

    Widget notifSearch() {
      return Container(
        margin: EdgeInsets.only(
          bottom: defaultMargin.h,
        ),
        child: StyledText(
          text: "<bold>1</bold> Nomor Kontrak telah ditemukan.",
          tags: {
            'bold': StyledTextTag(
              style: TextStyle(
                fontWeight: semibold,
              ),
            )
          },
          style: darkGreyTextStyle.copyWith(
            fontSize: 13.sp,
            fontWeight: light,
          ),
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget cardNumberSt() {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomCardSt(
            stNumber: "3234 5678",
            contractNumber: "9999 8888 7777",
          ),
        ],
      );
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                navbar(),
                formSearch(),
                notifSearch(),
                cardNumberSt(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
