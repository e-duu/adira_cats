import 'package:adira_cats/ui/pages/home_page.dart';
import 'package:adira_cats/ui/widgets/custom_card_sk.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:styled_text/styled_text.dart';
import '../../shared/theme.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_button_border.dart';

class CreateStContractNumberPage extends StatelessWidget {
  const CreateStContractNumberPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget navbar() {
      return CustomNavbar(
        text: 'Buat Surat Tugas',
        preffixWidget: IconButton(
          onPressed: () => {},
          icon: libraryIcon,
        ),
        suffixWidget: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ));
          },
          child: Container(
            child: Column(
              children: [
                IconButton(
                  onPressed: () => {},
                  icon: const Icon(Icons.subdirectory_arrow_left),
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget notifSearch() {
      return Container(
        margin: EdgeInsets.symmetric(vertical: 36.h),
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
          style: greyTextStyle.copyWith(
            fontSize: 13.sp,
            fontWeight: light,
          ),
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget card() {
      return Container(
        margin: EdgeInsets.only(bottom: 36.h),
        child: Column(
          children: [
            CustomCardSk(
              skNumber: '-',
              contractNumber: '9999 9999 9999',
              notifNew: true,
              notifText: 'Dipilih',
            ),
            CustomCardSk(
              skNumber: '-',
              contractNumber: '9999 9999 8888',
            ),
            CustomCardSk(
              skNumber: '-',
              contractNumber: '9999 9999 7777',
            ),
          ],
        ),
      );
    }

    Widget button() {
      return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButtonBorder(
              title: 'Kembali',
              titleColor: kBlackColor,
              onPressed: () {},
              borderColor: kDarkGreyColor,
              borderWidth: 2.r,
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
      backgroundColor: kWhiteColor,
      body: ListView(
        padding: EdgeInsets.symmetric(),
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
