import 'package:flutter/material.dart';
import 'package:the_company_check/screens/company_details/profit_and_loss.dart';
import 'package:the_company_check/theme/app_theme.dart';

import 'company_ratio.dart';

class Financials extends StatefulWidget {
  const Financials({Key? key}) : super(key: key);

  @override
  State<Financials> createState() => _FinancialsState();
}

class _FinancialsState extends State<Financials> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Finance"),
      ),
      body:  DefaultTabController(
          length: 3,
          child: SafeArea(
            child: Scaffold(
              appBar: PreferredSize(
                preferredSize: Size(double.infinity,60),
                child: TabBar(
                  indicatorColor: AppTheme.tabTextColor,
                    labelPadding: EdgeInsets.all(16),
                  tabs: [
                    Text("Profit & Loss",
                    style: TextStyle(
                        color: AppTheme.tabTextColor,
                        fontFamily: 'RobotoRegular',
                        fontSize: 14,
                        letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1.5 /*PERCENT not supported*/
                    ),
                    ),
                    Text("Balance Sheet",
                        style: TextStyle(
                            color: AppTheme.tabTextColor,
                            fontFamily: 'RobotoRegular',
                            fontSize: 14,
                            letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.5 /*PERCENT not supported*/
                        )
                    ),
                    Text("Ratio",
                        style: TextStyle(
                            color: AppTheme.tabTextColor,
                            fontFamily: 'RobotoRegular',
                            fontSize: 14,
                            letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.5 /*PERCENT not supported*/
                        )
                    )
                  ],
                ),
              ),
              body: TabBarView(
                children: [
                  ProfitAndLoss(title: 'Profit and Loss',isVisible: true,),
                  ProfitAndLoss(title: 'Balance Sheet',isVisible: false,),
                  CompanyRatio()
                ],
              ),
            ),
          )
      ),
    );
  }
}
