import 'package:flutter/material.dart';
import 'package:the_company_check/widgets/text_widget_with_bg.dart';

import '../theme/app_theme.dart';

class ItemRowWidget extends StatelessWidget {
  ItemRowWidget(this.title,this.amount,this.per, {Key? key}) : super(key: key);
  String title;
  double? amount;
  String? per;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(title,
              style: TextStyle(
                  color: AppTheme.colorGray2,
                  fontFamily: 'RobotoRegular',
                  fontSize: 12,
                  letterSpacing:
                  0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1.5 /*PERCENT not supported*/
              ),),
          ),
          const Spacer(),
          Expanded(
            child: Text(amount.toString(),
              style: TextStyle(
                  color: AppTheme.colorGray2,
                  fontFamily: 'RobotoRegular',
                  fontSize: 12,
                  letterSpacing:
                  0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1.5 /*PERCENT not supported*/
              ),),
          ),
          const Spacer(),
          Expanded(
            flex: 1,
              child: TextWidgetWithBg(
                  per!.contains("-") ? "$per%" : "+$per%",
                  !per!.contains("-")
              )
          )
          // Expanded(
          //   child: Text(per.toString(),
          //     style: TextStyle(
          //         color: AppTheme.colorGray2,
          //         fontFamily: 'RobotoRegular',
          //         fontSize: 12,
          //         letterSpacing:
          //         0 /*percentages not used in flutter. defaulting to zero*/,
          //         fontWeight: FontWeight.normal,
          //         height: 1.5 /*PERCENT not supported*/
          //     ),),
          // ),
        ],
      ),
    );
  }
}
