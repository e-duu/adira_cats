import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:adira_cats/ui/widgets/custom_icon_upload.dart';
import 'package:adira_cats/ui/widgets/custom_input.dart';
import 'package:adira_cats/ui/widgets/custom_menu.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';

class TrialPage extends StatelessWidget {
  const TrialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            // NOTE: CUSTOM NAVBAR
            CustomNavbar(
              preffixWidget: IconButton(
                onPressed: () => {},
                icon: Icon(Icons.subject_sharp)
              ),
              text: "Pencarian Unit",
              suffixWidget: Container(
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
            ),

            // NOTE: CUSTOM MENU
            // CustomMenu(
            //   imageUrl: "icon_menu1.png",
            //   text: "Pencarian Unit",
            //   padding: EdgeInsets.only(
            //     top: 26,
            //     bottom: 19,
            //     right: 18,
            //     left: 17
            //   ),
            //   onTap: () => {},
            // ),

            // NOTE: CUSTOM BUTTON
            // CustomButton(title: "Ok", onPressed: () {}, color: kDarkGreyColor, fontWeight: FontWeight.bold)

            // NOTE: CUSTOM INPUT
            CustomInput(
              hintText: "Password",
              hintColor: kDarkGreyColor,
              padding: EdgeInsets.only(top: 5),
              margin: EdgeInsets.symmetric(horizontal: 36),
              obscureText: true,
            ),

            // NOTE: CUSTOM ICON UPLOAD
            // CustomIconUpload(text: 'Tambahkan\nFoto KTP'),
            // SizedBox(
            //   width: 16,
            // ),
            // CustomIconUpload(text: "Tambahkan\nFoto Diri"),
          ],
        ),
      ),
    );
  }
}
