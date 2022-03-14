import 'package:adira_cats/ui/widgets/custom_input.dart';
import 'package:adira_cats/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class RegisterSecondPage extends StatelessWidget {
  const RegisterSecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget logo() {
      return Container(
        margin: EdgeInsets.only(top: 72),
        width: 200,
        height: 34,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/adira_logo_yellow.png'),
          ),
        ),
      );
    }

    Widget title() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(
          top: 36,
        ),
        child: Text(
          'Daftar sebagai informan',
          style: blackTextStyle.copyWith(
            fontSize: 18,
            fontWeight: bold,
          ),
        ),
      );
    }

    Widget inputSection() {
      Widget accountInput() {
        return CustomInput(
          hintText: 'Nomor Rekening',
          hintColor: kGreyColor,
          padding: EdgeInsets.symmetric(
            horizontal: 18,
            vertical: 15,
          ),
          margin: EdgeInsets.zero,
        );
      }

      Widget branchBank() {
        return CustomTextFormField(hintText: 'Cabang');
      }

      return Container(
        margin: EdgeInsets.only(top: 24),
        child: Column(
          children: [
            accountInput(),
            branchBank(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: Center(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            children: [
              logo(),
              title(),
              inputSection(),
            ],
          ),
        ),
      ),
    );
  }
}
