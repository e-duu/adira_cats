import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_input.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:adira_cats/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';
import '../widgets/custom_logo_adira.dart';

class RegisterFourthPage extends StatelessWidget {
  const RegisterFourthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          bottom: 24.h,
        ),
        child: CustomLogoAdira(
          text: 'Daftar Sebagai Informan',
        ),
      );
    }

    Widget inputSection() {
      Widget accountInput() {
        return CustomInput(
          hintText: 'Nomor Rekening',
          hintColor: kDarkGreyColor,
          filled: true,
          margin: EdgeInsets.only(
            bottom: 12.h,
          ),
        );
      }

      Widget chooseBank() {
        return CustomInput(
          hintText: 'Pilih Bank',
          hintColor: kDarkGreyColor,
          filled: true,
          margin: EdgeInsets.only(
            bottom: 12.h,
          ),
        );
      }

      Widget branchBank() {
        return CustomInput(
          hintText: 'Cabang Bank',
          hintColor: kDarkGreyColor,
          filled: true,
          margin: EdgeInsets.only(
            bottom: 12.h,
          ),
        );
      }

      Widget customerName() {
        return CustomInput(
          hintText: 'Nama Nasabah',
          hintColor: kDarkGreyColor,
          filled: true,
        );
      }

      return Container(
        margin: EdgeInsets.only(
          top: 24.h,
        ),
        child: Column(
          children: [
            accountInput(),
            chooseBank(),
            branchBank(),
            customerName(),
          ],
        ),
      );
    }

    Widget button() {
      return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButtonBorder(
                  title: 'Kembali',
                  titleColor: kBlackColor,
                  onPressed: () {},
                  borderColor: kDarkGreyColor,
                  borderWidth: 2.r,
                  fontWeight: normal,
                  width: 173.w,
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
                  width: 173.w,
                ),
              ],
            ),
            SizedBox(
              height: 12.h,
            ),
            CustomButton(
              title: 'Lanjutkan',
              onPressed: () {},
              color: kPrimaryColor,
              margin: EdgeInsets.symmetric(
                horizontal: defaultMargin.w,
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
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin.w,
          ),
          children: [
            header(),
            inputSection(),
          ],
        ),
      ),
    );
  }
}
