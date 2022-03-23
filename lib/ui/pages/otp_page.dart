import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget logo() {
      return Container(
        width: 200.w,
        height: 34.h,
        margin: EdgeInsets.only(
          top: 70.h,
        ),
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
        margin: EdgeInsets.only(
          top: 49.h,
        ),
        child: Column(
          children: [
            Text(
              'Verifikasi',
              style: blackTextStyle.copyWith(
                fontSize: 18.sp,
                fontWeight: bold,
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
              'Masukkan kode OTP yang Anda terima dari kami.',
              style: blackTextStyle.copyWith(
                fontSize: 13.sp,
                fontWeight: light,
              ),
            ),
          ],
        ),
      );
    }

    Widget otpEmail() {
      String _code = "";

      return Container(
        margin: EdgeInsets.only(
          top: 48.h,
        ),
        child: Column(
          children: [
            Text(
              'OTP Email',
              style: darkGreyTextStyle.copyWith(
                fontSize: 13.sp,
              ),
            ),
            SizedBox(
              height: 12.sp,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 18.w,
              ),
              child: Container(
                width: 336.w,
                margin: EdgeInsets.symmetric(
                  horizontal: 61.w,
                  vertical: 6.h,
                ),
                child: PinFieldAutoFill(
                  decoration: UnderlineDecoration(
                    gapSpace: 18.w,
                    lineHeight: 4.h,
                    textStyle: TextStyle(
                      fontSize: 24.sp,
                      height: 0.h,
                      color: Colors.black,
                      fontWeight: bold,
                    ),
                    colorBuilder: FixedColorBuilder(
                      Colors.black.withOpacity(
                        0.3,
                      ),
                    ),
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

    Widget otpMessage() {
      String _code = "";

      return Container(
        margin: EdgeInsets.only(
          top: 48.h,
        ),
        child: Column(
          children: [
            Text(
              'OTP SMS',
              style: darkGreyTextStyle.copyWith(
                fontSize: 13.sp,
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 18.w,
              ),
              child: Container(
                width: 336.w,
                margin: EdgeInsets.symmetric(
                  horizontal: 61.w,
                  vertical: 6.h,
                ),
                child: PinFieldAutoFill(
                  decoration: UnderlineDecoration(
                    gapSpace: 18.w,
                    lineHeight: 4.h,
                    textStyle: TextStyle(
                      fontSize: 24.sp,
                      height: 0,
                      color: Colors.black,
                      fontWeight: bold,
                    ),
                    colorBuilder: FixedColorBuilder(
                      Colors.black.withOpacity(
                        0.3,
                      ),
                    ),
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

    Widget contentTitle() {
      return Container(
        margin: EdgeInsets.only(
          top: 36.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Belum menerima kode?',
              style: blackTextStyle.copyWith(
                fontSize: 14.sp,
                fontWeight: light,
              ),
            ),
            SizedBox(
              width: 2,
            ),
            TextButton(
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    horizontal: 2.w,
                    vertical: 48.h,
                  ),
                  child: AlertDialog(
                    titlePadding: EdgeInsets.only(
                      top: 10.h,
                    ),
                    title: Text(
                      'Kode Dikirim',
                      style: blackTextStyle.copyWith(
                        fontWeight: bold,
                        fontSize: 18.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    content: Text(
                      'Kode telah dikirim ulang ke email Anda.',
                      style: blackTextStyle.copyWith(
                        fontSize: 13.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    actions: <Widget>[
                      CustomButton(
                        title: 'Ok',
                        onPressed: () => Navigator.pop(context, 'OK'),
                        color: kPrimaryColor,
                        textStyle: blackTextStyle,
                      ),
                    ],
                    actionsPadding: EdgeInsets.only(
                      bottom: 10.h,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        18.r,
                      ),
                    ),
                  ),
                ),
              ),
              child: Text(
                'Kirim ulang',
                style: blackTextStyle.copyWith(
                  fontSize: 14.sp,
                  fontWeight: bold,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget button() {
      return Container(
        margin: EdgeInsets.only(
          bottom: 26.h,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButtonBorder(
              title: 'Kembali',
              titleColor: kBlackColor,
              onPressed: () {},
              borderColor: kDarkGreyColor,
              borderWidth: 2.w,
              fontWeight: normal,
              margin: EdgeInsets.symmetric(
                horizontal: 36.w,
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            CustomButton(
              title: 'Submit',
              onPressed: () {},
              color: kPrimaryColor,
              textStyle: blackTextStyle,
              margin: EdgeInsets.symmetric(
                horizontal: 36.w,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
      title: Center(child: const Text('Drawer Demo')),
      
  ),
      
      backgroundColor: kWhiteColor,
      resizeToAvoidBottomInset: false,
      floatingActionButton: Visibility(
        child: button(),
      ),
        drawer: CustomNavbar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
          
              title(),
              otpEmail(),
              otpMessage(),
              contentTitle(),
            ],
          ),
        ),
      ),
    );
  }

  Drawer newMethod() {
    return Drawer(
      child: ListView(
      padding: EdgeInsets.zero,
      children: const <Widget>[
     
      ListTile(
        leading: Icon(Icons.message),
        title: Text('Messages'),
      ),
      ListTile(
        leading: Icon(Icons.account_circle),
        title: Text('Profile'),
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text('Settings'),
      ),
    ],
  ),
      );
  }
}
