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
          ],
        ),
      ),
    );
  }
}