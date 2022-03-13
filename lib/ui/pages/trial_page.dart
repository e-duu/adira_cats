import 'package:adira_cats/ui/widgets/custom_icon_upload.dart';
import 'package:adira_cats/ui/widgets/custom_menu.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';

class TrialPage extends StatelessWidget {
  const TrialPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            
            // NOTE: CUSTOM NAVBAR
            // CustomNavbar(),

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