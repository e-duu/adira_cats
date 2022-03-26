import 'package:adira_cats/ui/widgets/custom_input_search.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';
import 'package:adira_cats/shared/theme.dart';

class HandoverStSearchNilPage extends StatelessWidget {
  const HandoverStSearchNilPage({Key? key}) : super(key: key);

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
          hintText: "Cari Nomor Kontak ...",
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
          text: "Nomor Kontrak tidak ditemukan.",
          textAlign: TextAlign.center,
        ),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
