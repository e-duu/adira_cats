import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_input_search.dart';
import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget navBar(){
      return Container(
        width: double.infinity,
        height: 163,
        margin: EdgeInsets.only(
          bottom: 20
        ),
        padding: EdgeInsets.only(bottom: 40, top: 36, left: 36, right: 36),
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(18),
            bottomRight: Radius.circular(18),
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () => {},
                  icon: Icon(
                    Icons.subject_sharp
                  )
                ),
                Container(
                  height: 16,
                  width: 210,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/adira_logo_white.png",
                      )
                    )
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/image_user.png",
                      )
                    )
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 18,
            ),
            StyledText(
              text:
                  'Selamat Datang, <bold>Edward Einselton!</bold>',
              tags: {
                'bold': StyledTextTag(
                  style: TextStyle(
                    fontWeight: extraBold
                  ),
                ),
              },
              style: blackTextStyle.copyWith(
                fontWeight: semibold,
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }
    
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              navBar(),
              CustomInputSearch(
                onPressed: () {},
              ),
            ]
          ),
        ),
      ),
    );
  }
}