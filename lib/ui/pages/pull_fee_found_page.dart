import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_drawer.dart';
import 'package:adira_cats/ui/widgets/custom_dropdown.dart';
import 'package:adira_cats/ui/widgets/custom_expansion.dart';
import 'package:adira_cats/ui/widgets/custom_input.dart';
import 'package:adira_cats/ui/widgets/custom_input_search.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class PullFeeFoundPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  PullFeeFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // NOTE: NAVBAR
    Widget navbar() {
      return Container(
        child: CustomNavbar(
          text: "Pengajuan Biaya Tarik",
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

    Widget search() {
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: defaultPadding.h,
        ),
        child: CustomInputSearch(
          hintText: 'Cari Nomor Kontrak...',
          onPressed: () {},
        ),
      );
    }

    Widget expansion() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin.w,
          right: defaultMargin.w,
          bottom: 12.h,
        ),
        child: CustomExpansion(),
      );
    }

    Widget inputSection() {
      Widget caseChronology() {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Kronologi Kasus",
              style: darkGreyTextStyle.copyWith(
                fontSize: 13.sp,
                fontWeight: semibold,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            CustomInput(
              hintText: 'Jelaskan kronologi kasus ...',
              hintColor: kDarkGreyColor,
              filled: true,
            ),
            SizedBox(
              height: 12.h,
            ),
          ],
        );
      }

      Widget fileType() {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Jenis File",
              style: darkGreyTextStyle.copyWith(
                fontSize: 13.sp,
                fontWeight: semibold,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            CustomDropdown(
              items: [
                'BASTK',
                'Kontrak',
              ],
              hintText: 'Jenis File',
            ),
            SizedBox(
              height: 12.h,
            ),
          ],
        );
      }

      Widget documentName() {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nama Dokumen",
              style: darkGreyTextStyle.copyWith(
                fontSize: 13.sp,
                fontWeight: semibold,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            CustomInput(
              hintText: 'Nama Dokumen',
              hintColor: kDarkGreyColor,
              filled: true,
            ),
            SizedBox(
              height: 12.h,
            ),
          ],
        );
      }

      Widget notes() {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Catatan",
              style: darkGreyTextStyle.copyWith(
                fontSize: 13.sp,
                fontWeight: semibold,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            CustomInput(
              hintText: 'Tambahkan Catatan ...',
              hintColor: kDarkGreyColor,
              filled: true,
            ),
            SizedBox(
              height: 12.h,
            ),
          ],
        );
      }

      return Container(
        margin: EdgeInsets.only(
          bottom: 56.h,
          right: defaultMargin.w,
          left: defaultMargin.w,
        ),
        child: Column(
          children: [
            caseChronology(),
            fileType(),
            documentName(),
            notes(),
          ],
        ),
      );
    }

    Widget bottomButton() {
      return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButtonBorder(
                  title: 'Batal',
                  titleColor: kRedColor,
                  onPressed: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => Container(
                      child: AlertDialog(
                        titlePadding: EdgeInsets.symmetric(
                          vertical: defaultPadding.h,
                        ),
                        title: Container(
                          margin: EdgeInsets.only(
                            top: 48.h,
                          ),
                          child: Text(
                            'Batalkan?',
                            style: blackTextStyle.copyWith(
                              fontWeight: bold,
                              fontSize: 18.sp,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        content: Text(
                          'Anda yakin ingin membatalkan?',
                          style: blackTextStyle.copyWith(
                            fontSize: 13.sp,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        actions: <Widget>[
                          CustomButtonBorder(
                            titleColor: kRedColor,
                            title: 'Batalkan',
                            onPressed: () {},
                            borderColor: kRedColor,
                            borderWidth: 2.r,
                            fontWeight: normal,
                            width: 308.w,
                            margin: EdgeInsets.only(
                              right: defaultMargin.w,
                              left: defaultMargin.w,
                            ),
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          CustomButton(
                            title: 'Lanjutkan',
                            onPressed: () => Navigator.pop(context, 'OK'),
                            color: kPrimaryColor,
                            textStyle: blackTextStyle,
                            width: 308.w,
                            margin: EdgeInsets.only(
                              right: defaultMargin.w,
                              left: defaultMargin.w,
                              bottom: 48.h,
                            ),
                          ),
                        ],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.r),
                        ),
                      ),
                    ),
                  ),
                  borderColor: kRedColor,
                  borderWidth: 2.r,
                  fontWeight: normal,
                  width: 138.w,
                ),
                SizedBox(
                  width: 12.w,
                ),
                CustomButtonBorder(
                  title: 'Reset',
                  titleColor: kBlackColor,
                  onPressed: () {},
                  borderColor: kDarkGreyColor,
                  borderWidth: 2.r,
                  fontWeight: normal,
                  width: 138.w,
                ),
              ],
            ),
            SizedBox(
              height: 12.h,
            ),
            CustomButton(
              margin: EdgeInsets.only(
                right: defaultMargin.w,
                left: defaultMargin.w,
                bottom: defaultMargin.h,
              ),
              title: 'Submit',
              onPressed: () {},
              color: kPrimaryColor,
              textStyle: blackTextStyle,
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
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              navbar(),
              search(),
              expansion(),
              inputSection(),
              bottomButton(),
            ],
          ),
        ),
      ),
    );
  }
}
