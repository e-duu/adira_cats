import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_card_st.dart';
import 'package:adira_cats/ui/widgets/custom_drawer.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:styled_text/styled_text.dart';
import 'package:adira_cats/shared/theme.dart';

class CreateStContractNumberPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  CreateStContractNumberPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget navbar() {
      return CustomNavbar(
        text: "Buat Surat Tugas",
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
      );
    }

    Widget notifSearch() {
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: defaultMargin.h,
        ),
        child: StyledText(
          text:
              "<bold>3</bold> Nomor Kontrak telah ditemukan,\nPilih salah satu untuk melanjutkan.",
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

    Widget card() {
      return Container(
        margin: EdgeInsets.only(
          bottom: defaultMargin.h,
        ),
        child: Column(
          children: [
            CustomCardSt(
              stNumber: '-',
              contractNumber: '9999 9999 9999',
            ),
            CustomCardSt(
              stNumber: '-',
              contractNumber: '9999 9999 8888',
            ),
            CustomCardSt(
              stNumber: '-',
              contractNumber: '9999 9999 7777',
            ),
          ],
        ),
      );
    }

    Widget button() {
      return Container(
        margin: EdgeInsets.only(
          bottom: defaultMargin.h,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButtonBorder(
              title: 'Batal',
              titleColor: kRedColor,
              onPressed: () {},
              borderColor: kRedColor,
              borderWidth: 2,
              fontWeight: normal,
              margin: EdgeInsets.symmetric(
                horizontal: 20.w,
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            CustomButton(
              title: 'Pilih',
              onPressed: () {},
              color: kPrimaryColor,
              textStyle: blackTextStyle,
              margin: EdgeInsets.symmetric(
                horizontal: 20.w,
              ),
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
      backgroundColor: kWhiteColor,
      body: ListView(
        children: [
          SafeArea(
            child: Column(
              children: [
                navbar(),
                notifSearch(),
                card(),
                button(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
