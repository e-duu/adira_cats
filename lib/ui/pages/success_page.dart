import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 140,
                    height: 140,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/icon_success.png',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          'Berhasil!',
                          style: blackTextStyle.copyWith(
                            fontWeight: bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        StyledText(
                          text:
                              'Akun <bold>Edward Einselton</bold> sudah terdaftar!\nSilakan Login kembali.',
                          tags: {
                            'bold': StyledTextTag(
                              style: TextStyle(fontWeight: bold),
                            ),
                          },
                          style: blackTextStyle.copyWith(
                            fontWeight: light,
                            fontSize: 13,
                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              bottom: 36,
            ),
            child: CustomButton(
              title: 'Ok',
              onPressed: () {},
              margin: EdgeInsets.symmetric(
                horizontal: 36,
              ),
              color: kPrimaryColor,
              fontWeight: bold,
            ),
          ),
        ],
      ),
    );
  }
}
