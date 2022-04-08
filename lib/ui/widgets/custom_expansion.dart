import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_summary_case.dart';
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
                  overflow: TextOverflow.ellipsis,
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
      headerValue: 'Data Unit Nasabah',
      contentValue: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
            vertical: defaultMargin,
          ),
          decoration: BoxDecoration(
            color: kGreyColor,
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(
                  bottom: 24.h
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: kGreyColor,
                      width: 2,
                    ),
                  ),
                ),
                child: Text(
                  "No Kontrak \n${'123'}",
                  style: blackTextStyle.copyWith(
                    fontSize: 16.sp,
                    fontWeight: bold,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  bottom: 24.h
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: kGreyColor,
                      width: 2,
                    ),
                  ),
                ),
                child: Text(
                  "No CL ID \n${'-'}",
                  style: blackTextStyle.copyWith(
                    fontSize: 16.sp,
                    fontWeight: bold,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  bottom: 24.h
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: kGreyColor,
                      width: 2,
                    ),
                  ),
                ),
                child: Text(
                  "No Surat Kuasa \n${'-'}",
                  style: blackTextStyle.copyWith(
                    fontSize: 16.sp,
                    fontWeight: bold,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  bottom: 24.h
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: kGreyColor,
                      width: 2,
                    ),
                  ),
                ),
                child: Text(
                  "Estimasi Harga \n${'70000000'}",
                  style: blackTextStyle.copyWith(
                    fontSize: 16.sp,
                    fontWeight: bold,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  bottom: 24.h
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: kGreyColor,
                      width: 2,
                    ),
                  ),
                ),
                child: Text(
                  "Kode Cabang \n${'0108'}",
                  style: blackTextStyle.copyWith(
                    fontSize: 16.sp,
                    fontWeight: bold,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  bottom: 24.h
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: kGreyColor,
                      width: 2,
                    ),
                  ),
                ),
                child: Text(
                  "Kode Cabang Pemohon \n${'0117'}",
                  style: blackTextStyle.copyWith(
                    fontSize: 16.sp,
                    fontWeight: bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    Item(
      headerValue: 'Data Eksternal dan Summary Kasus',
      contentValue: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: defaultMargin,
        ),
        decoration: BoxDecoration(
          color: kGreyColor,
        ),
        child: Column(
          children: [
            CustomSummaryCase(
              title: "Unit di tangan Nasabah",
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomSummaryCase(
              title: "Unit di Pihak Ketiga/Gadai",
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomSummaryCase(
              title: "Unit di Kepolisian/Kebijaksanaan",
            ),
          ],
        ),
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