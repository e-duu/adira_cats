import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class CustomBarChart extends StatelessWidget {
  final String itemParent1;
  final String itemParent2;
  final String itemParent3;
  final String itemParent4;
  final String itemParent5;
  final String itemParent6;
  final String itemParent7;
  final int itemValue1;
  final int itemValue2;
  final int itemValue3;
  final int itemValue4;
  final int itemValue5;
  final int itemValue6;
  final int itemValue7;

  const CustomBarChart({
    Key? key,
    required this.itemParent1,
    required this.itemParent2,
    required this.itemParent3,
    required this.itemParent4,
    required this.itemParent5,
    required this.itemParent6,
    required this.itemParent7,
    required this.itemValue1,
    required this.itemValue2,
    required this.itemValue3,
    required this.itemValue4,
    required this.itemValue5,
    required this.itemValue6,
    required this.itemValue7,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = [
      Sales(itemParent1, itemValue1),
      Sales(itemParent2, itemValue2),
      Sales(itemParent3, itemValue3),
      Sales(itemParent4, itemValue4),
      Sales(itemParent5, itemValue5),
      Sales(itemParent6, itemValue6),
      Sales(itemParent7, itemValue7),
    ];

    var series = [
      charts.Series(
        domainFn: (Sales sales, _) => sales.day,
        measureFn: (Sales sales, _) => sales.count,
        id: 'Sales',
        data: data,
        labelAccessorFn: (Sales sales, _) =>
            '${sales.day} : ${sales.count.toString()}',
      ),
    ];

    var chart = charts.BarChart(
      series,
      barRendererDecorator: charts.BarLabelDecorator<String>(),
      animate: true,
      // domainAxis: charts.OrdinalAxisSpec(renderSpec: charts.NoneRenderSpec()), // Untuk Menghilangkan Parentnya
    );

    return Container(
      height: 178.h,
      child: chart,
    );
  }
}

class Sales {
  final String day;
  final int count;

  Sales(this.day, this.count);
}
