import 'package:flutter/material.dart';
import 'package:the_company_check/models/company_details_model.dart';
import 'package:the_company_check/theme/app_theme.dart';

import '../utils/app_utils.dart';

class ChargesCard extends StatefulWidget {
  const ChargesCard(this.charg, {Key? key}) : super(key: key);
  final Charge? charg;

  @override
  State<ChargesCard> createState() => _ChargesCardState();

}


class _ChargesCardState extends State<ChargesCard> {

  Color getColorCode(String txt){
    switch(txt){
      case "open":
        return AppTheme.colorActive;
      case "Closed":
        return AppTheme.colorClose;
    }
    return AppTheme.colorActive;
  }


  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 0,top: 12),
      elevation: 2,
      child: Column(
        children: <Widget>[
          Container(
            padding:  EdgeInsets.only(left: 26,top: 6,bottom: 6),
            decoration: BoxDecoration(
              color: Color.fromRGBO(243,243,243,1)
            ),
            child: Row(
            children: <Widget>[
              const Text("Charge ID: ",
              style: TextStyle(
                  color: Color.fromRGBO(107, 107, 107, 1),
                  fontFamily: 'RobotoBold',
                  fontSize: 12,
                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1.5 /*PERCENT not supported*/
              ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 6.0),
                child: Text("${widget?.charg?.chargeId}",
                  style: const TextStyle(
                      color: Color.fromRGBO(107, 107, 107, 1),
                      fontFamily: 'RobotoRegular',
                      fontSize: 12,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.5 /*PERCENT not supported*/
                  ),
                ),
              ),
            ],
            ),
          ),
          Container(
            padding:  EdgeInsets.only(left: 26,top: 6,bottom: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(child: const Text("Status",
                  style: TextStyle(
                      color: Color.fromRGBO(107, 107, 107, 1),
                      fontFamily: 'RobotoBold',
                      fontSize: 12,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.5 /*PERCENT not supported*/
                  ),
                ),),

                Expanded(
                  child: Text("${widget.charg?.status}",textAlign: TextAlign.start,
                    style: TextStyle(
                        color: getColorCode("${widget.charg?.status}"),
                        fontFamily: 'RobotoRegular',
                        fontSize: 12,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1.5 /*PERCENT not supported*/
                    ),
                  ),
                )

              ],
            ),
          ),
          Visibility(
            visible: widget.charg?.chargeHolderName !="" ? true : false,
            child: Container(
              padding:  EdgeInsets.only(left: 26,top: 6,bottom: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(child:  const Text("Bank Name",textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Color.fromRGBO(107, 107, 107, 1),
                        fontFamily: 'RobotoBold',
                        fontSize: 12,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1.5 /*PERCENT not supported*/
                    ),
                  ),),
                  Expanded(child:  Text("${widget.charg?.chargeHolderName}",
                    style: const TextStyle(
                        color: Color.fromRGBO(107, 107, 107, 1),
                        fontFamily: 'RobotoRegular',
                        fontSize: 12,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1.5 /*PERCENT not supported*/
                    ),
                  ))
                ],
              ),
            ),
          ),
          Visibility(
            visible: widget.charg?.dateOfCreation !="" ? true : false,
            child: Container(
              padding:  EdgeInsets.only(left: 26,top: 6,bottom: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(child:  const Text("Creation Date",textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Color.fromRGBO(107, 107, 107, 1),
                        fontFamily: 'RobotoBold',
                        fontSize: 12,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1.5 /*PERCENT not supported*/
                    ),
                  ),),
                  Expanded(child:  Text("${AppUtils.getDDMMYY(widget.charg?.dateOfCreation)}",
                    style: const TextStyle(
                        color: Color.fromRGBO(107, 107, 107, 1),
                        fontFamily: 'RobotoRegular',
                        fontSize: 12,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1.5 /*PERCENT not supported*/
                    ),
                  ))
                ],
              ),
            ),
          ),
          Visibility(
            visible: widget.charg?.amount !="" ? true : false,
            child: Container(
              padding:  EdgeInsets.only(left: 26,top: 6,bottom: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(child: const Text("Amount",textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Color.fromRGBO(107, 107, 107, 1),
                        fontFamily: 'RobotoBold',
                        fontSize: 12,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1.5 /*PERCENT not supported*/
                    ),
                  ),),
                  Expanded(child: Text("${widget.charg?.amount}",
                    style: const TextStyle(
                        color: Color.fromRGBO(107, 107, 107, 1),
                        fontFamily: 'RobotoRegular',
                        fontSize: 12,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1.5 /*PERCENT not supported*/
                    ),
                  ))
                ],
              ),
            ),
          ),
          Visibility(
            visible: widget.charg?.dateOfModification !="" ? true : false,
            child: Container(
              padding:  EdgeInsets.only(left: 26,top: 6,bottom: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(child: const Text("last Modified On",textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Color.fromRGBO(107, 107, 107, 1),
                        fontFamily: 'RobotoBold',
                        fontSize: 12,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1.5 /*PERCENT not supported*/
                    ),
                  ),),
                  Expanded(child: Text("${AppUtils.getDDMMYY(widget.charg?.dateOfModification)}",
                    style: const TextStyle(
                        color: Color.fromRGBO(107, 107, 107, 1),
                        fontFamily: 'RobotoRegular',
                        fontSize: 12,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1.5 /*PERCENT not supported*/
                    ),
                  )),
                ],
              ),
            ),
          ),
          Visibility(
            visible: widget.charg?.dateOfSatisfaction !="" ? true : false,
            child: Container(
              padding:  EdgeInsets.only(left: 26,top: 6,bottom: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(child: const Text("Satisfaction Date", textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Color.fromRGBO(107, 107, 107, 1),
                        fontFamily: 'RobotoBold',
                        fontSize: 12,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1.5 /*PERCENT not supported*/
                    ),
                  ),),
                  Expanded(child: Text("${AppUtils.getDDMMYY(widget.charg?.dateOfSatisfaction)}",
                    style: const TextStyle(
                        color: Color.fromRGBO(107, 107, 107, 1),
                        fontFamily: 'RobotoRegular',
                        fontSize: 12,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1.5 /*PERCENT not supported*/
                    ),
                  ))
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }
}
