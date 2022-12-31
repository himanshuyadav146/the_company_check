import 'package:flutter/material.dart';
import 'package:the_company_check/models/company_details_model.dart';
import 'package:the_company_check/routs/common_navigation.dart';
import 'package:the_company_check/routs/route_name.dart';
import 'package:the_company_check/screens/charges/charges_details.dart';
import 'package:the_company_check/theme/app_theme.dart';
import 'package:the_company_check/utils/AppSingleton.dart';

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
    AppSingleton appSingleton = AppSingleton();
    return InkWell(
      onTap: (){
        appSingleton.charg = widget.charg;
        CommonNavigation().navigateScreens(context, RouteName.routNameChargesDetails);
        //ChargesDetails(widget.charg);
      },
      child: Card(
        margin: EdgeInsets.only(left: 16,top: 12),
        elevation: 0,
        child: Column(
          children: [
            Row(
             children: <Widget>[
               Expanded(
                 child: Text("${widget?.charg?.chargeId}",
                   style: TextStyle(
                       color: AppTheme.colorGray3,
                       fontFamily: 'RobotoRegular',
                       fontSize: 12,
                       letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                       fontWeight: FontWeight.normal,
                       height: 1.5 /*PERCENT not supported*/
                   ),
                 ),
               ),
               Expanded(
                 child: Text("${widget.charg?.chargeHolderName}",
                   style: TextStyle(
                       color: AppTheme.colorGray3,
                       fontFamily: 'RobotoRegular',
                       fontSize: 12,
                       letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                       fontWeight: FontWeight.normal,
                       height: 1.5 /*PERCENT not supported*/
                   ),
                 ),
               ),
               Expanded(
                 child: Text("${widget.charg?.amount}",
                   style: TextStyle(
                       color: AppTheme.colorGray3,
                       fontFamily: 'RobotoRegular',
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
                   child: Text("${widget.charg?.status}",
                     style: TextStyle(
                         color: getColorCode("${widget.charg?.status}"),
                         fontFamily: 'RobotoRegular',
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
            const Padding(
              padding: EdgeInsets.only(top: 8.0,right: 8.0),
              child: Divider(
                color: AppTheme.colorGray,
              ),
            )
          ],
        )
      ),
    );
  }
}
