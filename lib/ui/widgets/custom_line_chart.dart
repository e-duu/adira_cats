import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class CustomLineChart extends StatelessWidget {
  final List<LineChart> listGrafik;

  const CustomLineChart({
    Key? key,
    required this.listGrafik,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = [
      LineChart(0, 5),
      LineChart(1, 25),
      LineChart(2, 100),
      LineChart(3, 75),
    ];

    var series = [
      charts.Series(
        id: 'LineChart',
        colorFn: (_, __) => charts.MaterialPalette.yellow.shadeDefault,
        domainFn: (LineChart linechart, _) => linechart.parent,
        measureFn: (LineChart linechart, _) => linechart.count,
        labelAccessorFn: (LineChart lineChart, _) =>
        '${lineChart.parent} : ${lineChart.count.toString()}',
        data: data,
      )
    ];

    var chart = charts.LineChart(
      series,
      animate: true,
    );

    return Container(
      height: 175,
      child: chart,
    );
  }
}

class LineChart {
  final int parent;
  final int count;

  LineChart(this.parent, this.count);
}