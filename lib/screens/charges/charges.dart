import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';
import 'package:the_company_check/models/company_details_model.dart';
import 'package:the_company_check/models/dchart_model.dart';
import 'package:the_company_check/theme/app_theme.dart';

import '../../widgets/charges_card.dart';
import '../../widgets/custom_appbar.dart';

class Charges extends StatefulWidget {
 // const Charges(this.charges, {Key? key}) : super(key: key);
  Charges(@required this.charges);
  final List<Charge>? charges;

  @override
  State<Charges> createState() => _ChargesState();
}

class _ChargesState extends State<Charges> {

  getData(){
  List<Map<String, dynamic>> dChartList = [];
    for(var element in widget.charges!){
      dChartList.add(
        {
            "domain":element.chargeHolderName,
            "measure":element.amount
        }
      );
    }
   return dChartList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          onChanged: (value) {
            debugPrint(value);
          }
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: Column(
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
                  data: getData(),
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
            Column(
              children: [
                Container(
                  padding:  EdgeInsets.only(left: 26,top: 6,bottom: 6,right: 12.0),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(243,243,243,1)
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Charge ID",
                          style: TextStyle(
                              color: Color.fromRGBO(107, 107, 107, 1),
                              fontFamily: 'RobotoMedium',
                              fontSize: 12,
                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1.5 /*PERCENT not supported*/
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text("Lender",
                          style: TextStyle(
                              color: AppTheme.colorGray2,
                              fontFamily: 'RobotoMedium',
                              fontSize: 12,
                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1.5 /*PERCENT not supported*/
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text("Amount",
                          style: TextStyle(
                              color: AppTheme.colorGray2,
                              fontFamily: 'RobotoMedium',
                              fontSize: 12,
                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1.5 /*PERCENT not supported*/
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text("Status",
                            style: TextStyle(
                                color: AppTheme.colorGray2,
                                fontFamily: 'RobotoMedium',
                                fontSize: 12,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.5 /*PERCENT not supported*/
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
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
        ),
      )
    );
  }
}
