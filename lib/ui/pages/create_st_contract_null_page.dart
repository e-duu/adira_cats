import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:styled_text/styled_text.dart';
import 'package:styled_text/tags/styled_text_tag.dart';

import '../../shared/theme.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_button_border.dart';
import '../widgets/custom_card_sk.dart';
import '../widgets/custom_navbar.dart';
import 'home_page.dart';

class CreateStContractNullPage extends StatelessWidget {
  const CreateStContractNullPage({Key? key}) : super(key: key);

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
        margin: EdgeInsets.only(
          top: 36.h,
        ),
        child: Text(
          'Nomor Kontrak tidak ditemukan.',
          style: blackTextStyle.copyWith(
            fontSize: 13,
            fontWeight: light,
          ),
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
      resizeToAvoidBottomInset: false,
      floatingActionButton: Visibility(
        child: button(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: Column(
          children: [
            navbar(),
            notifSearch(),
          ],
        ),
      ),
    );
  }
}
