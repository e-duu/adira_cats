import 'package:adira_cats/ui/pages/home_page.dart';
import 'package:adira_cats/ui/widgets/custom_dropdown.dart';
import 'package:adira_cats/ui/widgets/custom_input.dart';
import 'package:adira_cats/ui/widgets/custom_input_search.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/theme.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_button_border.dart';

class CreateStPage extends StatelessWidget {
  const CreateStPage({Key? key}) : super(key: key);

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
      Widget search() {
        return CustomInputSearch(
          onPressed: () {},
          hintText: 'Cari Cabang Login',
        );
      }

      Widget createDate() {
        return Container(
          margin: EdgeInsets.only(
            top: 24.h,
            right: 20.w,
            left: 20.w,
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
            top: 24.h,
            right: 20.w,
            left: 20.w,
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
              CustomDropdown(
                items: [
                  'Cabang MOU 1',
                  'Cabang MOU 2',
                  'Cabang MOU 3',
                ],
                hintText: 'Pilih Cabang MOU Eksternal',
              ),
            ],
          ),
        );
      }

      Widget display() {
        return Container(
          margin: EdgeInsets.only(
            top: 24.h,
            right: 20.w,
            left: 20.w,
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
              ),
            ],
          ),
        );
      }

      Widget eksternalName() {
        return Container(
          margin: EdgeInsets.only(
            top: 24.h,
            right: 20.w,
            left: 20.w,
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
              CustomInput(
                hintText: 'Tidak ada nama dipilih',
                hintColor: kDarkGreyColor,
              ),
            ],
          ),
        );
      }

      Widget contract() {
        return Container(
          margin: EdgeInsets.only(
            top: 24.h,
            right: 20.w,
            left: 20.w,
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
                right: 20.w,
              ),
            ),
          ],
        );
      }

      Widget personInCharge() {
        return Container(
          margin: EdgeInsets.only(
            right: 20.w,
            left: 20.w,
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
              CustomInput(
                hintText: 'Pilih Person In Charge',
                hintColor: kDarkGreyColor,
              ),
            ],
          ),
        );
      }

      return Container(
        margin: EdgeInsets.only(
          top: 24.h,
        ),
        child: Column(
          children: [
            search(),
            createDate(),
            branch(),
            display(),
            eksternalName(),
            contract(),
            buttonSearchData(),
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
                          vertical: 24.h,
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
                              right: 36.w,
                              left: 36.w,
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
                              right: 36.w,
                              left: 36.w,
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
                bottom: 36.h,
                right: 20.w,
                left: 20.w,
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
