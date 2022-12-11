import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';
import 'package:the_company_check/theme/app_theme.dart';

class ProfitAndLoss extends StatefulWidget {
  final String title;
   bool isVisible = true;
   ProfitAndLoss({Key? key,required this.title, required this.isVisible}) : super(key: key);

  @override
  State<ProfitAndLoss> createState() => _ProfitAndLossState();
}

class _ProfitAndLossState extends State<ProfitAndLoss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18),
        child:SingleChildScrollView(
         child: Column(
           children: <Widget>[
             Row(
               children: <Widget>[
                 Visibility(
                   visible: widget.isVisible,
                     child: Image.asset('assets/images/pandl.png',
                   width: 50,
                 )),
                  Padding(
                   padding: EdgeInsets.only(left: 18.0),
                   child: Text(widget.title,
                       style: TextStyle(
                           color: Color.fromRGBO(28, 60, 138, 1),
                           fontFamily: 'RobotoRegular',
                           fontSize: 18,
                           letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                           fontWeight: FontWeight.normal,
                           height: 1.5 /*PERCENT not supported*/
                       )
                   ),
                 )
               ],
             ),
             AspectRatio(aspectRatio: 16/9,
               child:DChartBar(
                 data: const [
                   {
                     'id': 'Bar 1',
                     'data': [
                       {'domain': '2018', 'measure': 3},
                       {'domain': '2019', 'measure': 3},
                       {'domain': '2020', 'measure': 4},
                       {'domain': '2021', 'measure': 6},
                       {'domain': '2022', 'measure': 0.3},
                     ],
                   },
                   {
                     'id': 'Bar 2',
                     'data': [
                       {'domain': '2019', 'measure': 4},
                       {'domain': '2020', 'measure': 5},
                       {'domain': '2021', 'measure': 2},
                       {'domain': '2022', 'measure': 1},
                       {'domain': '2023', 'measure': 2.5},
                     ],
                   },
                 ],
                 // yAxisTitle: 'Year',
                 // xAxisTitle: 'Sale',
                 measureMin: 0,
                 measureMax: 8,
                 minimumPaddingBetweenLabel: 1,
                 domainLabelPaddingToAxisLine: 16,
                 axisLineTick: 2,
                 axisLinePointTick: 2,
                 axisLinePointWidth: 10,
                 axisLineColor: AppTheme.lightGray138_1,
                 measureLabelPaddingToAxisLine: 16,
                 barColor: (barData, index, id) => id == 'Bar 1'
                     ? AppTheme.bar1tColor
                     : AppTheme.bar2tColor,
                 // barValue: (barData, index) => '${barData['measure']}%',
                 showBarValue: true,
                 barValuePosition: BarValuePosition.outside,
                 verticalDirection: true,
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 8.0),
               child: Row(
                 children: <Widget>[
                   Container(
                     width: 8,
                     height: 8,
                     decoration: const BoxDecoration(
                         color : Color.fromRGBO(59, 89, 161, 1),
                         borderRadius : BorderRadius.all(Radius.elliptical(8, 8))
                   ),
                   ),
                   const Padding(
                     padding: EdgeInsets.only(left: 8.0),
                     child: Text("Revenue",
                         style: TextStyle(
                             color: Color.fromRGBO(138, 138, 138, 1),
                             fontFamily: 'RobotoRegular',
                             fontSize: 12,
                             letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                             fontWeight: FontWeight.normal,
                             height: 1.5 /*PERCENT not supported*/
                         )

                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 18.0),
                     child: Container(
                       width: 8,
                       height: 8,
                       decoration: const BoxDecoration(
                           color : AppTheme.bar2tColor,
                           borderRadius : BorderRadius.all(Radius.elliptical(8, 8))
                       ),
                     ),
                   ),
                   const Padding(
                     padding: EdgeInsets.only(left: 8.0),
                     child: Text("Net Income",
                         style: TextStyle(
                             color: Color.fromRGBO(138, 138, 138, 1),
                             fontFamily: 'RobotoRegular',
                             fontSize: 12,
                             letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                             fontWeight: FontWeight.normal,
                             height: 1.5 /*PERCENT not supported*/
                         )

                     ),
                   ),
                 ],
               ),
             )

           ],
         ),
        )
      ),
    );
  }
}
