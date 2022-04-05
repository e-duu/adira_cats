import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:adira_cats/shared/theme.dart';

class CustomBarChart extends StatelessWidget {
  final List<Sales> listGrafik;

  const CustomBarChart({
    Key? key,
    required this.listGrafik,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = listGrafik;

    var series = [
      charts.Series(
        domainFn: (Sales sales, _) => sales.day,
        measureFn: (Sales sales, _) => sales.count,
        colorFn: (Sales sales, _) => sales.color,
        labelAccessorFn: (Sales sales, _) =>
          '${sales.day} : ${sales.count.toString()}',
        id: 'Sales',
        data: data,
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
  final dynamic count;

  final charts.Color color;

  Sales(this.day, this.count, Color color):this.color = charts.Color(r: color.red, g: color.green, b: color.blue, a: color.alpha);
}
