import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

import '../models/company_details_model.dart';
class DonetChartWidget extends StatefulWidget {
   DonetChartWidget(@required this.charges,{Key? key}) : super(key: key);
  final List<Charge>? charges;


  @override
  State<DonetChartWidget> createState() => _DonetChartWidgetState();
}

class _DonetChartWidgetState extends State<DonetChartWidget> {
  late List<GDPData> _chartData;
  late List<CompanyData> _newChartData;

  @override
  initState() {
    _chartData = getCharData();
    // _newChartData = getData();
    _newChartData = getStatus();
    super.initState();
  }
  List<GDPData> getCharData(){
    final List<GDPData> chartData = [
      GDPData("Oceaine", 1600000000.0),
      GDPData("Oceaine1", 1800000000.0),
      GDPData("Oceaine2", 2000000000.0),
      GDPData("Oceaine3", 1000000000.0),
      GDPData("Oceaine4", 400000000.0),
      GDPData("Oceaine5", 900000000.0),
      GDPData("Oceaine6", 1200000000.0),
      GDPData("Oceaine7", 11900000000.0),
      GDPData("Oceaine8", 200000000.0),
      GDPData("Oceaine9", 500000000.0),
      GDPData("Oceaine10", 12200000000.0),
      GDPData("Oceaine11", 4500000000.0),
      GDPData("Oceaine12", 6000000000.0),
      GDPData("Oceaine13", 3400000000.0),
      GDPData("Oceaine14", 5600000000.0),
      GDPData("Oceaine16", 4500000000.0),
      GDPData("Oceaine17", 5600000000.0),
    ];
    return chartData;
  }


  List<CompanyData> getStatus(){
    List<CompanyData> dChartProceesList = [];
    var totalOpen = widget?.charges?.where((element) => element.status == "Open")
        .map((e) => e.amount as double).reduce((x, y) => x+y);

    var totalClosed = widget?.charges?.where((element) => element.status == "Closed")
        .map((e) => e.amount as double).reduce((x, y) => x+y);

     dChartProceesList.add(
        CompanyData("Open", totalOpen!)
    );

    dChartProceesList.add(
        CompanyData("Closed", totalClosed!)
    );

    return dChartProceesList;
  }



  @override
  Widget build(BuildContext context) {
    getStatus();
    return SafeArea(
        child: Scaffold(
          body: SfCircularChart(
            legend: Legend(isVisible: true,overflowMode: LegendItemOverflowMode.scroll),
            series: <CircularSeries>[
              DoughnutSeries<CompanyData,String>(
                dataSource: _newChartData,
                xValueMapper: (CompanyData data,_) => data.status,
                yValueMapper: (CompanyData data,_) => data.amount
              )
            ],
          ),
        )
    );
  }
}

class GDPData{
  GDPData(this.contrains,this.gdp);
  final String contrains;
  final double gdp;
}


class CompanyData{
  CompanyData(this.status,this.amount);
  final String? status;
  final double amount;
}
