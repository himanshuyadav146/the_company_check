import 'dart:math';

import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';
import 'package:the_company_check/models/company_details_model.dart';
import 'package:the_company_check/models/social_list_model.dart';
import 'package:the_company_check/theme/app_theme.dart';

import '../../charts/donet_chart.dart';
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
  List<Map<String, dynamic>> dChartProceesList = [];
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
            {
              "domain":element.chargeHolderName,
              "measure":element.amount + element2.amount
            }

        );
      }
    }
    if(pos == 0){
     dChartProceesList.add(
         {
           "domain":element.chargeHolderName,
           "measure":element.amount
         }
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
    return Scaffold(
      appBar: CustomAppBar(
          onChanged: (value) {
            debugPrint(value);
          }
      ),
      body: widget.charges !=null && widget.charges!.length > 0 ? Container(
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
                child:DonetChartWidget(widget.charges),
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
                      const Spacer(),
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
                      const Spacer(),
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
      ) : const Text("No result found, Please try again",
        style: TextStyle(fontSize: 20),)
    );
  }
}
