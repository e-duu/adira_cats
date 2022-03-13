import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widget/custom_button.dart';
import 'package:flutter/material.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: CustomButton(
          title: 'Ok',
          width: 350,
          onPressed: () {},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 140,
                height: 140,
                margin: EdgeInsets.only(bottom: 36),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icon_success.png',
                    ),
                  ),
                ),
              ),
              Text(
                'Berhasil!',
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: bold,
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                'Akun Edward Einselton sudah terdaftar!\nSilakan Login kembali.',
                style: blackTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: light,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
