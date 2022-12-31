import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';

class ChartTest extends StatefulWidget {
  const ChartTest({Key? key}) : super(key: key);

  @override
  State<ChartTest> createState() => _ChartTestState();
}

class _ChartTestState extends State<ChartTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("testing"),),
      body: Column(
        children: <Widget>[
          AspectRatio(
              aspectRatio: 16/9,
            child: DChartBarCustom(listData: [],),
          )
        ],
      ),
    );
  }
}
