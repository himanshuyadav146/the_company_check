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
    _newChartData = getData();
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

  List<CompanyData> getData(){
    List<Map<String, dynamic>> dChartList = [];
   // List<Map<String, dynamic>> dChartProceesList = [];
    List<CompanyData> dChartProceesList = [];
    var l = widget.charges!.length;
    var pos = 0;
    for(var i=0;i<l;i++){
      var element = widget.charges![i];
      pos =0;
      for(var j=i+1;j<l;j++){
        var element2 = widget.charges![j];
        if(element.chargeHolderName == element2.chargeHolderName &&
            element.status == "Open" && element2.status == "Open"
        ){
          pos++;
          dChartProceesList.add(
              // {
              //   "domain":element.chargeHolderName,
              //   "measure":element.amount + element2.amount
              // }
              CompanyData(element?.chargeHolderName, element.amount + element2.amount)

          );
        }
      }
      if(pos == 0){
        dChartProceesList.add(
            // {
            //   "domain":element.chargeHolderName,
            //   "measure":element.amount
            // }
            CompanyData(element?.chargeHolderName, element.amount + element.amount)
        );

        //dChartProceesList.add(element.amount);
      }
    }


    for(var element in widget.charges!){
      dChartList.add(
          {
            "domain":element.chargeHolderName,
            "measure":element.amount
          }
      );
    }
    // return dChartList;
    return dChartProceesList;
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SfCircularChart(
            // legend: Legend(isVisible: true,overflowMode: LegendItemOverflowMode.scroll),
            series: <CircularSeries>[
              PieSeries<CompanyData,String>(
                dataSource: _newChartData,
                xValueMapper: (CompanyData data,_) => data.domain,
                yValueMapper: (CompanyData data,_) => data.measure
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
  CompanyData(this.domain,this.measure);
  final String? domain;
  final double measure;
}
