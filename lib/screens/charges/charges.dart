import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';
import 'package:the_company_check/models/company_details_model.dart';

import '../../widgets/charges_card.dart';

class Charges extends StatefulWidget {
 // const Charges(this.charges, {Key? key}) : super(key: key);

  Charges(this.charges);
  final List<Charge>? charges;

  @override
  State<Charges> createState() => _ChargesState();
}

class _ChargesState extends State<Charges> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Charges"),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 55,
            alignment: AlignmentDirectional.centerStart,
            decoration: BoxDecoration(
              color: Color.fromRGBO(239, 239, 239, 1),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Text("Charges",
                style: TextStyle(
                    color: Color.fromRGBO(82, 82, 83, 1),
                    fontFamily: 'RobotoBold',
                    fontSize: 18,
                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.5 /*PERCENT not supported*/
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: DChartPie(
                data: [
                  {'domain': 'Flutter', 'measure': 28},
                  {'domain': 'React Native', 'measure': 27},
                  {'domain': 'Ionic', 'measure': 20},
                  {'domain': 'Cordova', 'measure': 15},
                ],
                fillColor: (pieData, index) {
                  switch (pieData['domain']) {
                    case 'Flutter':
                      return Colors.blue;
                    case 'React Native':
                      return Colors.blueAccent;
                    case 'Ionic':
                      return Colors.lightBlue;
                    default:
                      return Colors.orange;
                  }
                },
                pieLabel: (pieData, index) {
                  return "${pieData['domain']}:\n${pieData['measure']}%";
                },
                labelPosition: PieLabelPosition.outside,
                donutWidth: 20,
              ),
            ),
          ),
          Expanded(
              child:ListView.builder(
                  itemCount: widget.charges?.length,
                  itemBuilder: (ctx,i){
                    return ListTile(
                      title: ChargesCard(widget.charges![i]),
                    );
                  }

              )
          )
        ],
      )
    );
  }
}
