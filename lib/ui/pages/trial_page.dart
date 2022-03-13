import 'package:adira_cats/ui/widgets/menu.dart';
import 'package:adira_cats/ui/widgets/navbar.dart';
import 'package:flutter/material.dart';

class TrialPage extends StatelessWidget {
  const TrialPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Navbar(),
            Menu(
              imageUrl: "icon_menu1.png", 
              text: "Pencarian Unit",
              padding: EdgeInsets.only(
                top: 26,
                bottom: 19,
                right: 18,
                left: 17
              ),
              onTap: () => {},
            )
          ],
        ),
      ),
    );
  }
}