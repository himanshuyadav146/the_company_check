import 'package:flutter/material.dart';
import 'package:the_company_check/screens/company_details/profit_and_loss.dart';
import 'package:the_company_check/screens/company_details/store/financials_details_store.dart';
import 'package:the_company_check/theme/app_theme.dart';

import '../../utils/AppSingleton.dart';
import '../../widgets/custom_appbar.dart';
import '../loader/loading_page.dart';
import 'company_ratio.dart';

class Financials extends StatefulWidget {
  const Financials({Key? key}) : super(key: key);

  @override
  State<Financials> createState() => _FinancialsState();
}

class _FinancialsState extends State<Financials> {
  FinancialsDetailsStore financialsDetailsStore = FinancialsDetailsStore();

  @override
  void initState() {
    _getData();
    super.initState();

  }

  void _getData() async {
    var appSingleton = AppSingleton();
   // await financialsDetailsStore.getFinancialsDetails(appSingleton.cinNo);
    await financialsDetailsStore.getFinancialsDetails("L15491WB1962PLC031425");
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          onChanged: (value) {
            debugPrint(value);
          }
      ),
      body: financialsDetailsStore.isLoading ? const LoadingPage() : DefaultTabController(
          length: 3,
          child: SafeArea(
            child: Scaffold(
              appBar: const PreferredSize(
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
                  ProfitAndLoss(title: 'Profit and Loss',isProfitAndLoss: true,
                      isBalanceSheet: false,isRatio: false,financialsModel: financialsDetailsStore.response),
                  ProfitAndLoss(title: 'Balance Sheet',isProfitAndLoss: false,
                      isBalanceSheet:true,isRatio: false,
                      financialsModel: financialsDetailsStore.response),
                  ProfitAndLoss(title: 'Balance Sheet',isProfitAndLoss: false,
                      isBalanceSheet:false,isRatio: true,
                      financialsModel: financialsDetailsStore.response),
                ],
              ),
            ),
          )
      ),
    );
  }
}
