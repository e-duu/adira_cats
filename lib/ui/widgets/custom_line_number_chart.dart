import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class CustomLineNumberChart extends StatelessWidget {
  final bool animate;

  CustomLineNumberChart({
    Key? key,
    this.animate = true,
  });

  @override
  Widget build(BuildContext context) {
    return charts.LineChart(
      chart(),
      animate: animate,
    );
  }

  static List<charts.Series<LinearSales, int>> chart() {
    final data = [
      LinearSales(1, 5),
      LinearSales(2, 25),
      LinearSales(3, 100),
      LinearSales(4, 75),
      LinearSales(5, 75),
      LinearSales(6, 75),
      LinearSales(7, 75),
    ];

    return [
      charts.Series<LinearSales, int>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (LinearSales sales, _) => sales.day,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

class LinearSales {
  final int day;
  final int sales;

  LinearSales(this.day, this.sales);
}