import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_input.dart';
import 'package:adira_cats/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class RegisterSecondPage extends StatelessWidget {
  const RegisterSecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    icon:
    const Icon(Icons.arrow_downward);
    Widget logo() {
      return Container(
        margin: EdgeInsets.only(top: 72),
        width: 200,
        height: 34,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/adira_logo_yellow.png'),
          ),
        ),
      );
    }

    Widget title() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(
          top: 36,
        ),
        child: Text(
          'Daftar sebagai informan',
          style: blackTextStyle.copyWith(
            fontSize: 18,
            fontWeight: bold,
          ),
        ),
      );
    }

    Widget inputSection() {
      Widget accountInput() {
        return CustomInput(
          hintText: 'Nomor Rekening',
          hintColor: kDarkGreyColor,
          filled: true,
          margin: EdgeInsets.only(bottom: 12),
        );
      }

      Widget chooseBank() {
        return CustomInput(
          hintText: 'Pilig Bank',
          hintColor: kDarkGreyColor,
          filled: true,
          margin: EdgeInsets.only(bottom: 12),
        );
      }

      Widget branchBank() {
        return CustomInput(
          hintText: 'Cabang Bank',
          hintColor: kDarkGreyColor,
          filled: true,
          margin: EdgeInsets.only(bottom: 12),
        );
      }

      Widget customerName() {
        return CustomInput(
          hintText: 'Nama Nasabah',
          hintColor: kDarkGreyColor,
          filled: true,
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 24),
        child: Column(
          children: [
            accountInput(),
            chooseBank(),
            branchBank(),
            customerName(),
          ],
        ),
      );
    }

    Widget button() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 358),
        child: Row(
          children: [
            CustomButtonBorder(
              title: 'Kembali',
              onPressed: () {},
              borderColor: kBlackColor,
              borderWidth: 2,
              fontWeight: light,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: Center(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            children: [
              logo(),
              title(),
              inputSection(),
              // dropdown(),
              button(),
            ],
          ),
        ),
      ),
    );
  }
}

// class _MyHomePageState extends State<MyHomePage> {
//   String dropdownvalue = 'Apple';

//   var items = [
//     'Apple',
//     'Banana',
//     'Grapes',
//     'Orange',
//     'watermelon',
//     'Pineapple'
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("DropDownList Example"),
//       ),
//       body: Container(
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               DropdownButton(
//                 value: dropdownvalue,
//                 icon: Icon(Icons.keyboard_arrow_down),
//                 items: items.map((String items) {
//                   return DropdownMenuItem(value: items, child: Text(items));
//                 }).toList(),
//                 onChanged: (dynamic newValue) {
//                   setState(() {
//                     dropdownvalue = newValue;
//                   });
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
