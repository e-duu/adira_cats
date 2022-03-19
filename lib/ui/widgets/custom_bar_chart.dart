import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class CustomBarChart extends StatelessWidget {

  final int mon;
  final int tue;
  final int wed;
  final int thu;
  final int fri;
  final int sat;
  final int sun;
  
  const CustomBarChart({
    Key? key,
    required this.mon,
    required this.tue,
    required this.wed,
    required this.thu,
    required this.fri,
    required this.sat,
    required this.sun,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var data = [
      Sales("Sen", mon),
      Sales("Sel", tue),
      Sales("Rab", wed),
      Sales("Kam", thu),
      Sales("Jum", fri),
      Sales("Sab", sat),
      Sales("Min", sun),
    ];

    var series = [
      charts.Series(
        domainFn: (Sales sales,_)=>sales.day,
        measureFn: (Sales sales,_)=>sales.count,
        id: 'Sales',
        data: data,
        labelAccessorFn: (Sales sales,_)=> '${sales.day} : ${sales.count.toString()}',
      ),
    ];

    var chart = charts.BarChart(
      series,
      barRendererDecorator: charts.BarLabelDecorator<String>(),
      animate: true,
      // domainAxis: charts.OrdinalAxisSpec(renderSpec: charts.NoneRenderSpec()), // Untuk Menghilangkan info hari
    );
    
    return Container(
      height: 178.h,
      child: chart,
    );
  }
}

class Sales{
  final String day;
  final int count;

  Sales(this.day, this.count);
}