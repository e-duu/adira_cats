import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:flutter/material.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';
import 'package:sms_autofill/sms_autofill.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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

    Widget contentTitle() {
      return Container(
        margin: EdgeInsets.only(top: 36),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Belum menerima kode?',
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: light,
                )),
            SizedBox(
              width: 2,
            ),
            Text(
              'Kirim ulang',
              style: blackTextStyle.copyWith(
                fontSize: 14,
                fontWeight: bold,
              ),
            ),
          ],
        ),
      );
    }

    Widget otpEmail() {
      String _code = "";

      return Container(
        margin: EdgeInsets.only(top: 48),
        child: Column(
          children: [
            Text(
              'OTP Email',
              style: darkGreyTextStyle.copyWith(
                fontSize: 13,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 18,
              ),
              child: Container(
                width: 336,
                margin: EdgeInsets.symmetric(
                  horizontal: 61,
                  vertical: 6,
                ),
                child: PinFieldAutoFill(
                  decoration: UnderlineDecoration(
                    gapSpace: 18,
                    lineHeight: 4,
                    textStyle: TextStyle(
                      fontSize: 24,
                      height: 0,
                      color: Colors.black,
                      fontWeight: bold,
                    ),
                    colorBuilder:
                        FixedColorBuilder(Colors.black.withOpacity(0.3)),
                  ),
                  currentCode: _code,
                  onCodeSubmitted: (code) {},
                  onCodeChanged: (code) {
                    if (code!.length == 6) {
                      FocusScope.of(context).requestFocus(FocusNode());
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget otpSms() {
      String _code = "";

      return Container(
        margin: EdgeInsets.only(top: 48),
        child: Column(
          children: [
            Text(
              'OTP SMS',
              style: darkGreyTextStyle.copyWith(
                fontSize: 13,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 18,
              ),
              child: Container(
                width: 336,
                margin: EdgeInsets.symmetric(
                  horizontal: 61,
                  vertical: 6,
                ),
                child: PinFieldAutoFill(
                  decoration: UnderlineDecoration(
                    gapSpace: 18,
                    lineHeight: 4,
                    textStyle: TextStyle(
                      fontSize: 24,
                      height: 0,
                      color: Colors.black,
                      fontWeight: bold,
                    ),
                    colorBuilder:
                        FixedColorBuilder(Colors.black.withOpacity(0.3)),
                  ),
                  currentCode: _code,
                  onCodeSubmitted: (code) {},
                  onCodeChanged: (code) {
                    if (code!.length == 6) {
                      FocusScope.of(context).requestFocus(FocusNode());
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget customButtonBorder() {
      return Container(
        margin: EdgeInsets.only(
          bottom: 26,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButtonBorder(
              title: 'Kembali',
              onPressed: () {},
              borderColor: kDarkGreyColor,
              borderWidth: 2,
              fontWeight: normal,
              width: 356,
            ),
            SizedBox(height: 12),
            CustomButton(
              title: 'Submit',
              onPressed: () {},
              color: kPrimaryColor,
              fontWeight: normal,
              width: 356,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      floatingActionButton: customButtonBorder(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              logo(),
              title(),
              otpEmail(),
              otpSms(),
              contentTitle(),
            ],
          ),
        ),
      ),
    );
  }
}
