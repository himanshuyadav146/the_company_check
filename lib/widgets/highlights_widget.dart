import 'package:flutter/material.dart';
import 'package:the_company_check/utils/app_utils.dart';
import 'package:the_company_check/widgets/text_widget_with_bg.dart';

import '../theme/app_theme.dart';

class Highlights extends StatelessWidget {
  Highlights(this.heading,this.amount,this.percentage,{Key? key}) : super(key: key);
  String? heading;
  double? amount;
  String? percentage;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
          children: <Widget>[
            Text("\u2022 $heading",
                style: TextStyle(
                    color: AppTheme.colorGray2,
                    fontFamily: 'RobotoRegular',
                    fontSize: 12,
                    letterSpacing:
                    0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.5 /*PERCENT not supported*/
                )),
            Text(AppUtils.getFormatedAmountInCR(amount!, 2),
                style: TextStyle(
                    color: AppTheme.colorGray2,
                    fontFamily: 'RobotoRegular',
                    fontSize: 12,
                    letterSpacing:
                    0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.5 /*PERCENT not supported*/
                )),
        // percentage = AppUtils.getPercentageOfyears(
        //     myValue.toDouble(), preYearValue.toDouble()).toString();

            TextWidgetWithBg(
                percentage!.contains("-") ? "$percentage%" : "+$percentage%",
                !percentage!.contains("-")
            )
          ],
        )
    );
  }
}
