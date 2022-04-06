import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_summary_case.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:styled_text/styled_text.dart';

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
        animationDuration: Duration(milliseconds: 500),
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
                  horizontal: 16.w,
                  vertical: 16.h,
                ),
                child: Text(
                  item.headerValue,
                  style: blackTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 14.sp,
                    color: item.isExpanded == true ? kPrimaryColor : null,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              );
            },
            body: item.contentValue,
            isExpanded: item.isExpanded,
          );
        }).toList(),
        dividerColor: kGreyColor,
      ),
    );
  }
}

List<Item> generateItems() {
  return [
    Item(
      headerValue: 'Data Unit Nasabah',
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 24.h),
              width: double.infinity,
              child: StyledText(
                text: 'No Kontrak \n<small>${'123'}</small>',
                tags: {
                  'small': StyledTextTag(
                    style: TextStyle(
                      fontWeight: light,
                    ),
                  ),
                },
                style: blackTextStyle.copyWith(
                  fontWeight: bold,
                  fontSize: 13.sp,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 24.h),
              child: StyledText(
                text: "No CL ID \n<small>${'-'}</small>",
                tags: {
                  'small': StyledTextTag(
                    style: TextStyle(
                      fontWeight: light,
                    ),
                  ),
                },
                style: blackTextStyle.copyWith(
                  fontWeight: bold,
                  fontSize: 13.sp,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 24.h),
              child: StyledText(
                text: "No Surat Kuasa \n<small>${'-'}</small>",
                tags: {
                  'small': StyledTextTag(
                    style: TextStyle(
                      fontWeight: light,
                    ),
                  ),
                },
                style: blackTextStyle.copyWith(
                  fontWeight: bold,
                  fontSize: 13.sp,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 24.h),
              child: StyledText(
                text: "Estimasi Harga \n<small>${'70000000'}</small>",
                tags: {
                  'small': StyledTextTag(
                    style: TextStyle(
                      fontWeight: light,
                    ),
                  ),
                },
                style: blackTextStyle.copyWith(
                  fontWeight: bold,
                  fontSize: 13.sp,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 24.h),
              child: StyledText(
                text: "Kode Cabang \n<small>${'0108'}</small>",
                tags: {
                  'small': StyledTextTag(
                    style: TextStyle(
                      fontWeight: light,
                    ),
                  ),
                },
                style: blackTextStyle.copyWith(
                  fontWeight: bold,
                  fontSize: 13.sp,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 24.h),
              child: StyledText(
                text: "Kode Cabang Pemohon \n<small>${'0117'}</small>",
                tags: {
                  'small': StyledTextTag(
                    style: TextStyle(
                      fontWeight: light,
                    ),
                  ),
                },
                style: blackTextStyle.copyWith(
                  fontWeight: bold,
                  fontSize: 13.sp,
                ),
                textAlign: TextAlign.start,
              ),
            ),
          ],
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