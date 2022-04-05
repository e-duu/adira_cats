import 'package:adira_cats/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomExpansion extends StatefulWidget {
  CustomExpansion({Key? key}) : super(key: key);

  @override
  State<CustomExpansion> createState() => _CustomExpansionState();
}

class _CustomExpansionState extends State<CustomExpansion> {
  List<Item> _items = generateItems();
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ExpansionPanelList(
        animationDuration: Duration(milliseconds:500),
        elevation: 1,
        expansionCallback: (int index, bool isExpanded) {
          setState(() {
            _items[index].isExpanded = !isExpanded;
          });
        },
        children: _items.map<ExpansionPanel>((Item item) {
          return ExpansionPanel(
            headerBuilder: (BuildContext context, bool isExpanded) {
              return Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 23.w,
                  vertical: 23.h,
                ),
                child: Text(
                  item.headerValue,
                  style: blackTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 14,
                  ),
                ),
              );
            },
            body: item.contentValue,
            isExpanded: item.isExpanded,
          );
        }).toList(),
        dividerColor: kDarkGreyColor,
      ),
    );
  }
}

List<Item> generateItems() {
  return [ 
    Item(
      headerValue: 'Title 1',
      contentValue: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: defaultMargin,
        ),
        decoration: BoxDecoration(
          color: kGreyColor,
        ),
        child: Text('content 1'),
      ),
    ),
    Item(
      headerValue: 'Title 2',
      contentValue: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: defaultMargin,
        ),
        decoration: BoxDecoration(
          color: kGreyColor,
        ),
        child: Text('content 2'),
      ),
    ),
  ];
}

class Item {
  Item({
    this.headerValue = '',
    required this.contentValue,
    this.isExpanded = false,
  });

  String headerValue;
  Widget contentValue;
  bool isExpanded;
}
// https://medium.flutterdevs.com/expansion-panel-widget-in-flutter-7a331a0865ac