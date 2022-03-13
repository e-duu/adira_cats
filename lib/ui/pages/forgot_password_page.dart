import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  Widget logo() {
    return Container(
      width: 200,
      height: 34,
      margin: EdgeInsets.only(top: 70),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/adira_logo_yellow.png'),
        ),
      ),
    );
  }

  /// Widget Title
  Widget title() {
    return Container(
      margin: EdgeInsets.only(top: 49),
      child: Column(
        children: [
          Text(
            'Verifikasi',
            style: blackTextStyle.copyWith(
              fontSize: 18,
              fontWeight: bold,
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            'Masukkan kode OTP yang Anda terima dari kami.',
            style: blackTextStyle.copyWith(
              fontSize: 14,
              fontWeight: light,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              logo(),
              title(),
            ],
          ),
        ),
      ),
    );
  }
}
