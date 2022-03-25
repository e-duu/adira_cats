import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:charts_flutter/flutter.dart' as charts;

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
