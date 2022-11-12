import 'package:flutter/material.dart';
import 'package:the_company_check/charts/bar_chart/samples/bar_chart_sample1.dart';
import 'package:the_company_check/charts/bar_chart/samples/bar_chart_sample2.dart';
import 'package:the_company_check/charts/bar_chart/samples/bar_chart_sample3.dart';
import 'package:the_company_check/charts/bar_chart/samples/bar_chart_sample4.dart';
import 'package:the_company_check/charts/bar_chart/samples/bar_chart_sample5.dart';
import 'package:the_company_check/charts/bar_chart/samples/bar_chart_sample6.dart';
import 'package:the_company_check/charts/bar_chart/samples/bar_chart_sample7.dart';

class BarChartPage2 extends StatelessWidget {
  const BarChartPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
          padding: EdgeInsets.all(0.0),
          child: BarChartSample2(),
        ),
      );
  }
}
