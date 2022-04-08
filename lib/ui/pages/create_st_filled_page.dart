import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_drawer.dart';
import 'package:adira_cats/ui/widgets/custom_dropdown.dart';
import 'package:adira_cats/ui/widgets/custom_input.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:adira_cats/shared/theme.dart';
import 'package:styled_text/styled_text.dart';

import '../widgets/custom_card_dialog_st.dart';

class CreateStFilledPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  CreateStFilledPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget navbar() {
      return CustomNavbar(
        text: 'Buat Surat Tugas',
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

    Widget input() {
      Widget loginBranch() {
        return Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin.w,
          ),
          child: Text(
            'Cabang Login Semarang',
            style: blackTextStyle.copyWith(
              fontWeight: bold,
              fontSize: 20,
            ),
          ),
        );
      }

      Widget createDate() {
        return Container(
          margin: EdgeInsets.only(
            top: defaultPadding.h,
            right: 19.w,
            left: 19.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tanggal Dibuat',
                style: darkGreyTextStyle.copyWith(
                  fontSize: 12.sp,
                  fontWeight: semibold,
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              CustomInput(
                hintText: 'selasa, 8 Maret 2022',
                hintColor: kBlackColor,
              ),
            ],
          ),
        );
      }

      Widget branch() {
        return Container(
          margin: EdgeInsets.only(
            top: defaultPadding.h,
            right: 19.w,
            left: 19.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Cabang MOU Eksternal',
                style: darkGreyTextStyle.copyWith(
                  fontSize: 12.sp,
                  fontWeight: semibold,
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Container(
                height: 50.h,
                child: DropdownSearch<String>(
                  mode: Mode.MENU,
                  hint: 'Cabang MOU Eksternal',
                  showSearchBox: true,
                  showClearButton: true,
                  items: [
                    "Cabang MOU Eksternal 1",
                    "Cabang MOU Eksternal 2",
                    "Cabang MOU Eksternal 3",
                    "Cabang MOU Eksternal 4",
                  ],
                  onChanged: print,
                ),
              ),
            ],
          ),
        );
      }

      Widget eksternalName() {
        return Container(
          margin: EdgeInsets.only(
            top: defaultPadding.h,
            right: 19.w,
            left: 19.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nama Eksternal',
                style: darkGreyTextStyle.copyWith(
                  fontSize: 12.sp,
                  fontWeight: semibold,
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Container(
                height: 50.h,
                child: DropdownSearch<String>(
                  mode: Mode.MENU,
                  hint: 'Nama Eksternal',
                  showSearchBox: true,
                  showClearButton: true,
                  items: [
                    "External Name 1",
                    "External Name 2",
                    "External Name 3",
                    "External Name 4",
                  ],
                  onChanged: print,
                ),
              ),
            ],
          ),
        );
      }

      Widget display() {
        return Container(
          margin: EdgeInsets.only(
            top: defaultPadding.h,
            right: 19.w,
            left: 19.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Display Nama PT',
                style: darkGreyTextStyle.copyWith(
                  fontSize: 12.sp,
                  fontWeight: semibold,
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              CustomInput(
                hintText: 'Display Nama PT',
                hintColor: kDarkGreyColor,
                readOnly: true,
              ),
            ],
          ),
        );
      }

      Widget contract() {
        return Container(
          margin: EdgeInsets.only(
            top: defaultPadding.h,
            right: 19.w,
            left: 19.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nomor Kontrak',
                style: darkGreyTextStyle.copyWith(
                  fontSize: 12.sp,
                  fontWeight: semibold,
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              CustomInput(
                hintText: 'Cari Nomor Kontrak',
                hintColor: kDarkGreyColor,
              ),
            ],
          ),
        );
      }

      Widget buttonSearchData() {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              title: 'Cari Data',
              onPressed: () {},
              color: kPrimaryColor,
              textStyle: blackTextStyle.copyWith(
                fontSize: 12,
                fontWeight: bold,
              ),
              width: 172.w,
              margin: EdgeInsets.only(
                top: 12.h,
                bottom: 12.h,
                right: 19.w,
              ),
            ),
          ],
        );
      }

      Widget contractNumber() {
        return Column(
          children: [
            CustomCardDialogSt(
              stNumber: '-',
              contractNumber: '9999 9999 7777',
              iconDelete: true,
              onPressedDelete: () => showDialog<String>(
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
                        'Hapus?',
                        style: blackTextStyle.copyWith(
                          fontWeight: bold,
                          fontSize: 18.sp,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    content: Text(
                      'Anda yakin ingin menghapus?',
                      style: blackTextStyle.copyWith(
                        fontSize: 13.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    actions: <Widget>[
                      CustomButtonBorder(
                        titleColor: kDarkGreyColor,
                        title: 'Kembali',
                        onPressed: () {},
                        borderColor: kDarkGreyColor,
                        borderWidth: 2.w,
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
                        title: 'Hapus',
                        onPressed: () => Navigator.pop(context, 'OK'),
                        color: kRedColor,
                        textStyle: whiteTextStyle,
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
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => SingleChildScrollView(
                  child: Container(
                    width: double.infinity,
                    child: AlertDialog(
                      titlePadding: EdgeInsets.only(
                        top: 10.h,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 20.h,
                      ),
                      title: Container(
                        margin: EdgeInsets.only(
                          top: 48.h,
                        ),
                        child: Text(
                          'Surat Tugas',
                          style: blackTextStyle.copyWith(
                            fontWeight: bold,
                            fontSize: 18.sp,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      content: Container(
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(
                          horizontal: defaultMargin.w,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Flexible(
                                  child: StyledText(
                                    text: '<bold>Nomor ST : </bold>  -',
                                    tags: {
                                      'bold': StyledTextTag(
                                        style: TextStyle(
                                          fontWeight: bold,
                                        ),
                                      ),
                                    },
                                    style: blackTextStyle.copyWith(
                                      fontWeight: light,
                                      fontSize: 13.sp,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Row(
                              children: [
                                Flexible(
                                  child: StyledText(
                                    text:
                                        '<bold>Nomor Kontrak : </bold>  9999 6666 7777',
                                    tags: {
                                      'bold': StyledTextTag(
                                        style: TextStyle(
                                          fontWeight: bold,
                                        ),
                                      ),
                                    },
                                    style: blackTextStyle.copyWith(
                                      fontWeight: light,
                                      fontSize: 13.sp,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Row(
                              children: [
                                Flexible(
                                  child: StyledText(
                                    text:
                                        '<bold>Alamat : </bold>  Bekasi Barat',
                                    tags: {
                                      'bold': StyledTextTag(
                                        style: TextStyle(
                                          fontWeight: bold,
                                        ),
                                      ),
                                    },
                                    style: blackTextStyle.copyWith(
                                      fontWeight: light,
                                      fontSize: 13.sp,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Row(
                              children: [
                                Flexible(
                                  child: StyledText(
                                    text: '<bold>OD Hari : </bold>  OD Hari 01',
                                    tags: {
                                      'bold': StyledTextTag(
                                        style: TextStyle(
                                          fontWeight: bold,
                                        ),
                                      ),
                                    },
                                    style: blackTextStyle.copyWith(
                                      fontWeight: light,
                                      fontSize: 13.sp,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Row(
                              children: [
                                Flexible(
                                  child: StyledText(
                                    text:
                                        '<bold>Nama Eksternal : </bold>  Nama Eksternal 001',
                                    tags: {
                                      'bold': StyledTextTag(
                                        style: TextStyle(
                                          fontWeight: bold,
                                        ),
                                      ),
                                    },
                                    style: blackTextStyle.copyWith(
                                      fontWeight: light,
                                      fontSize: 13.sp,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Row(
                              children: [
                                Flexible(
                                  child: StyledText(
                                    text:
                                        '<bold>Nama PT Eksternal : </bold>  Nama PT Eksternal 001',
                                    tags: {
                                      'bold': StyledTextTag(
                                        style: TextStyle(
                                          fontWeight: bold,
                                        ),
                                      ),
                                    },
                                    style: blackTextStyle.copyWith(
                                      fontWeight: light,
                                      fontSize: 13.sp,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Row(
                              children: [
                                Flexible(
                                  child: StyledText(
                                    text:
                                        '<bold>O/S Principle : </bold>  O/S Principle',
                                    tags: {
                                      'bold': StyledTextTag(
                                        style: TextStyle(
                                          fontWeight: bold,
                                        ),
                                      ),
                                    },
                                    style: blackTextStyle.copyWith(
                                      fontWeight: light,
                                      fontSize: 13.sp,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Row(
                              children: [
                                Flexible(
                                  child: StyledText(
                                    text:
                                        '<bold>Nomor Polisi : </bold>  B 1234 Y',
                                    tags: {
                                      'bold': StyledTextTag(
                                        style: TextStyle(
                                          fontWeight: bold,
                                        ),
                                      ),
                                    },
                                    style: blackTextStyle.copyWith(
                                      fontWeight: light,
                                      fontSize: 13.sp,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Row(
                              children: [
                                Flexible(
                                  child: StyledText(
                                    text: '<bold>Merk : </bold>  Chevrolet',
                                    tags: {
                                      'bold': StyledTextTag(
                                        style: TextStyle(
                                          fontWeight: bold,
                                        ),
                                      ),
                                    },
                                    style: blackTextStyle.copyWith(
                                      fontWeight: light,
                                      fontSize: 13.sp,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Row(
                              children: [
                                Flexible(
                                  child: StyledText(
                                    text: '<bold>Type : </bold>  Impala 1986',
                                    tags: {
                                      'bold': StyledTextTag(
                                        style: TextStyle(
                                          fontWeight: bold,
                                        ),
                                      ),
                                    },
                                    style: blackTextStyle.copyWith(
                                      fontWeight: light,
                                      fontSize: 13.sp,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Row(
                              children: [
                                Flexible(
                                  child: StyledText(
                                    text:
                                        '<bold>Nomor Rangka : </bold>  97BD68JK2KK',
                                    tags: {
                                      'bold': StyledTextTag(
                                        style: TextStyle(
                                          fontWeight: bold,
                                        ),
                                      ),
                                    },
                                    style: blackTextStyle.copyWith(
                                      fontWeight: light,
                                      fontSize: 13.sp,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Row(
                              children: [
                                Flexible(
                                  child: StyledText(
                                    text:
                                        '<bold>Nomor Mesin : </bold>  97BD68JK2KK',
                                    tags: {
                                      'bold': StyledTextTag(
                                        style: TextStyle(
                                          fontWeight: bold,
                                        ),
                                      ),
                                    },
                                    style: blackTextStyle.copyWith(
                                      fontWeight: light,
                                      fontSize: 13.sp,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Row(
                              children: [
                                Flexible(
                                  child: StyledText(
                                    text:
                                        '<bold>Nama STNK : </bold>  Januar Tri',
                                    tags: {
                                      'bold': StyledTextTag(
                                        style: TextStyle(
                                          fontWeight: bold,
                                        ),
                                      ),
                                    },
                                    style: blackTextStyle.copyWith(
                                      fontWeight: light,
                                      fontSize: 13.sp,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Row(
                              children: [
                                Flexible(
                                  child: StyledText(
                                    text:
                                        '<bold>Alamat STNK : </bold>  Bogor Barat',
                                    tags: {
                                      'bold': StyledTextTag(
                                        style: TextStyle(
                                          fontWeight: bold,
                                        ),
                                      ),
                                    },
                                    style: blackTextStyle.copyWith(
                                      fontWeight: light,
                                      fontSize: 13.sp,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Row(
                              children: [
                                Flexible(
                                  child: StyledText(
                                    text:
                                        '<bold>Cabang Handling  : </bold>  Cabang Handling 001',
                                    tags: {
                                      'bold': StyledTextTag(
                                        style: TextStyle(
                                          fontWeight: bold,
                                        ),
                                      ),
                                    },
                                    style: blackTextStyle.copyWith(
                                      fontWeight: light,
                                      fontSize: 13.sp,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Row(
                              children: [
                                Flexible(
                                  child: StyledText(
                                    text:
                                        '<bold>Nomor Hp ARH : </bold>  0821 - 3245 - 9225',
                                    tags: {
                                      'bold': StyledTextTag(
                                        style: TextStyle(
                                          fontWeight: bold,
                                        ),
                                      ),
                                    },
                                    style: blackTextStyle.copyWith(
                                      fontWeight: light,
                                      fontSize: 13.sp,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      actions: <Widget>[
                        Container(
                          width: 380.w,
                          margin: EdgeInsets.only(
                            right: defaultMargin.w,
                            left: defaultMargin.w,
                            bottom: 48.h,
                          ),
                          child: Column(
                            children: [
                              CustomButtonBorder(
                                title: "Kembali",
                                titleColor: kDarkGreyColor,
                                onPressed: () => Navigator.pop(context),
                                borderColor: kDarkGreyColor,
                                borderWidth: 2,
                                fontWeight: light,
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              CustomButton(
                                title: 'Batalkan ST',
                                onPressed: () {},
                                color: kRedColor,
                                textStyle: whiteTextStyle,
                              ),
                            ],
                          ),
                        ),
                      ],
                      actionsPadding: EdgeInsets.only(
                        bottom: 10.h,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.r),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      }

      Widget personInCharge() {
        return Container(
          margin: EdgeInsets.only(
            right: 19.w,
            left: 19.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Person In Charge',
                style: darkGreyTextStyle.copyWith(
                  fontSize: 12.sp,
                  fontWeight: semibold,
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              CustomDropdown(
                items: [
                  'Joko',
                  'Seno',
                  'Raka',
                ],
                hintText: 'Person In Charge',
              ),
            ],
          ),
        );
      }

      return Container(
        margin: EdgeInsets.only(
          top: defaultPadding.h,
        ),
        child: Column(
          children: [
            loginBranch(),
            createDate(),
            branch(),
            eksternalName(),
            display(),
            contract(),
            buttonSearchData(),
            contractNumber(),
            personInCharge(),
          ],
        ),
      );
    }

    Widget button() {
      return Container(
        child: Column(
          children: [
            SizedBox(
              height: 34.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButtonBorder(
                  titleColor: kRedColor,
                  title: 'Batal',
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
                            borderWidth: 2.w,
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
                  borderWidth: 2,
                  fontWeight: normal,
                  width: 154.w,
                ),
                SizedBox(
                  width: 12.w,
                ),
                CustomButtonBorder(
                  titleColor: kDarkGreyColor,
                  title: 'Reset',
                  onPressed: () {},
                  borderColor: kDarkGreyColor,
                  borderWidth: 2,
                  fontWeight: normal,
                  width: 154.w,
                ),
              ],
            ),
            SizedBox(
              height: 12.h,
            ),
            CustomButton(
              title: 'Buat ST',
              onPressed: () {},
              color: kPrimaryColor,
              textStyle: blackTextStyle,
              margin: EdgeInsets.only(
                bottom: defaultMargin.h,
                right: 19.w,
                left: 19.w,
              ),
            ),
          ],
        ),
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
            bottomRight: Radius.circular(35),
          ),
          child: CustomDrawer()
          ),
        ),
      drawerEnableOpenDragGesture : true,
      endDrawerEnableOpenDragGesture: false,
      backgroundColor: kWhiteColor,
      body: ListView(
        children: [
          SafeArea(
            child: Column(
              children: [
                navbar(),
                input(),
                button(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
