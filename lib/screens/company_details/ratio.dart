import 'package:flutter/material.dart';
import 'package:the_company_check/screens/company_details/store/financials_details_store.dart';
import 'package:the_company_check/theme/app_theme.dart';
import 'package:the_company_check/utils/app_utils.dart';

import '../../models/financials_model.dart';
import '../../utils/AppSingleton.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/highlights_widget.dart';
import '../../widgets/item_row_widget.dart';
import '../loader/loading_page.dart';

class Ratio extends StatefulWidget {
  const Ratio({Key? key}) : super(key: key);

  @override
  State<Ratio> createState() => _RatioState();
}

class _RatioState extends State<Ratio> {
  FinancialsDetailsStore financialsDetailsStore = FinancialsDetailsStore();
  late var ratio;
  late RatioDetails currentYearInfo;
  late RatioDetails prevYearInfo;

  @override
  void initState() {
    _getData();
    super.initState();

  }

  void _getData() async {
    var appSingleton = AppSingleton();
    await financialsDetailsStore.getFinancialsDetails(appSingleton.cinNo);
    setState(() {
      // .ratioDetails?[index]
      ratio = financialsDetailsStore.response.data?.ratioDetails;
      if(ratio !=null){
        // for(var i=0;i<ratio?.length;i++){
        //
        // }

        currentYearInfo = ratio[0];
        prevYearInfo = ratio[1];
      }
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(onChanged: (value) {

      }),
      body: financialsDetailsStore.isLoading ? const LoadingPage() :
      Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0,top: 22.0,right: 8.0),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Highlights",
                      style: TextStyle(
                          color: AppTheme.colorGray2,
                          fontFamily: 'RobotoMedium',
                          fontSize: 14,
                          letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.5 /*PERCENT not supported*/
                      ),),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 8.0,bottom: 20.0),
                  child: Divider(
                    color: AppTheme.colorGray8,
                  ),

                ),
                Row(
                  children: <Widget>[
                    Visibility(
                      visible: currentYearInfo?.totalRevenueC!=null && prevYearInfo.totalRevenueC!=null,
                        child: Highlights(
                            "Revenue",
                            currentYearInfo?.totalRevenueC,
                            AppUtils.getPercentageOfyears(currentYearInfo.totalRevenueC!,
                                prevYearInfo.totalRevenueC!)

                        ),
                    ),
                    Visibility(
                      visible: currentYearInfo?.profitLossC!=null && prevYearInfo.profitLossC!=null,
                        child: Highlights(
                            "Profit/Loss",
                            currentYearInfo?.profitLossC,
                            AppUtils.getPercentageOfyears(currentYearInfo.profitLossC!,
                                prevYearInfo.profitLossC!)
                        ),
                    ),
                    Visibility(
                      visible: currentYearInfo?.cashBalanceC!=null && prevYearInfo.cashBalanceC!=null,
                        child: Highlights(
                            "Cash & Bank Bal",
                            currentYearInfo?.cashBalanceC,
                            AppUtils.getPercentageOfyears(currentYearInfo.cashBalanceC!,
                                prevYearInfo.cashBalanceC!)
                        ),
                    ),

                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Row(
                    children: <Widget>[
                      Visibility(
                        visible: currentYearInfo?.nETWORTHRATIORA!=null && prevYearInfo.nETWORTHRATIORA!=null,
                          child: Highlights(
                              "Net Worth",
                              currentYearInfo?.nETWORTHRATIORA,
                              AppUtils.getPercentageOfyears(currentYearInfo.nETWORTHRATIORA!,
                                  prevYearInfo.nETWORTHRATIORA!)

                          ),
                      ),
                      Visibility(
                        visible: currentYearInfo?.totalAssetsC!=null && prevYearInfo.totalAssetsC!=null,
                          child: Highlights(
                              "Assets",
                              currentYearInfo?.totalAssetsC,
                              AppUtils.getPercentageOfyears(currentYearInfo.totalAssetsC!,
                                  prevYearInfo.totalAssetsC!)
                          ),
                      ),

                      Visibility(
                        visible: currentYearInfo?.ebitdaMarginRA!=null && prevYearInfo.cashBalanceC!=null,
                          child: Highlights(
                              "EBITDA",
                              currentYearInfo?.ebitdaMarginRA,
                              AppUtils.getPercentageOfyears(currentYearInfo.cashBalanceC!,
                                  prevYearInfo.cashBalanceC!)
                          ),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:14.0,top: 18.0),
                  child: Row(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Visibility(
                          visible: false,
                          child: Highlights(
                              "Contribution",
                              currentYearInfo?.ebitdaMarginRA,
                              AppUtils.getPercentageOfyears(currentYearInfo.cashBalanceC!,
                                  prevYearInfo.cashBalanceC!)
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(padding:const EdgeInsets.only(top: 18.0,bottom: 6.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Ratio",
                    style: TextStyle(
                        color: AppTheme.colorGray2,
                        fontFamily: 'RobotoMedium',
                        fontSize: 14,
                        letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1.5 /*PERCENT not supported*/
                    ),
                  ),
                ),
                ),
                Divider(
                  color: AppTheme.colorGray8,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Particulars",
                            style: TextStyle(
                                color: AppTheme.colorGray2,
                                fontFamily: 'RobotoLight',
                                fontSize: 14,
                                letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.5 /*PERCENT not supported*/
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "31 Mar ${currentYearInfo.financialYear}",
                          style: TextStyle(
                              color: AppTheme.colorGray2,
                              fontFamily: 'RobotoLight',
                              fontSize: 14,
                              letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1.5 /*PERCENT not supported*/
                          ),
                        ),
                      ),
                      Text(
                        "Y/Y CHANGE",
                        style: TextStyle(
                            color: AppTheme.colorGray2,
                            fontFamily: 'RobotoLight',
                            fontSize: 14,
                            letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.5 /*PERCENT not supported*/
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      decoration: const BoxDecoration(
                        color: AppTheme.colorGray8,
                        borderRadius: BorderRadius.all(
                          Radius.circular(0),
                        ),
                      ),
                      width: double.infinity,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Liquidity",
                              style: TextStyle(
                                  color: AppTheme.colorGray2,
                                  fontFamily: 'RobotoMedium',
                                  fontSize: 14,
                                  letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Visibility(
                      visible: currentYearInfo.cURRENTRATIORA != null
                        && prevYearInfo.cURRENTRATIORA !=null,
                        child: Column(
                          children: <Widget>[
                            ItemRowWidget("Current Ratio",
                                currentYearInfo.cURRENTRATIORA,
                                AppUtils.getPercentageOfyears(
                                    currentYearInfo.cURRENTRATIORA!,
                                    prevYearInfo.cURRENTRATIORA!)
                            ),
                            Divider(
                              color: AppTheme.colorGray8,
                            ),
                          ],
                        )
                    ),
                    Visibility(
                      visible:currentYearInfo.lIQUIDITYRATIORA!=null && prevYearInfo.lIQUIDITYRATIORA!=null ,
                        child: Column(
                          children: <Widget>[
                            ItemRowWidget("Quick Ratio",
                                currentYearInfo.lIQUIDITYRATIORA,
                                AppUtils.getPercentageOfyears(
                                    currentYearInfo.lIQUIDITYRATIORA!,
                                    prevYearInfo.lIQUIDITYRATIORA!)),
                            Divider(
                              color: AppTheme.colorGray8,
                            ),
                          ],
                        )
                    ),
                    Visibility(
                      visible: currentYearInfo.cASHRATIORA!=null && prevYearInfo.cASHRATIORA!=null,
                        child: Column(
                          children: <Widget>[
                            ItemRowWidget("Cash Ratio",
                                currentYearInfo.cASHRATIORA,
                                AppUtils.getPercentageOfyears(
                                    currentYearInfo.cASHRATIORA!,
                                    prevYearInfo.cASHRATIORA!)),
                            Divider(
                              color: AppTheme.colorGray8,
                            ),
                          ],
                        )
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: AppTheme.colorGray8,
                        borderRadius: BorderRadius.all(
                          Radius.circular(0),
                        ),
                      ),
                      width: double.infinity,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Turnover",
                              style: TextStyle(
                                  color: AppTheme.colorGray2,
                                  fontFamily: 'RobotoMedium',
                                  fontSize: 14,
                                  letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Visibility(
                        visible:currentYearInfo.inventorySalesDaysRC!=null && prevYearInfo.inventorySalesDaysRC!=null ,
                        child: Column(
                          children: <Widget>[
                            ItemRowWidget("Inventory To Sales",
                                currentYearInfo.inventorySalesDaysRC,
                                AppUtils.getPercentageOfyears(
                                    currentYearInfo.inventorySalesDaysRC!,
                                    prevYearInfo.inventorySalesDaysRC!)),
                            Divider(
                              color: AppTheme.colorGray8,
                            ),
                          ],
                        )
                          ),
                    Visibility(
                      visible: currentYearInfo.debtorsSalesDaysRC!=null && prevYearInfo.debtorsSalesDaysRC !=null,
                        child: Column(
                          children: [
                            ItemRowWidget("Debtor To Sales",
                                currentYearInfo.debtorsSalesDaysRC,
                                AppUtils.getPercentageOfyears(
                                    currentYearInfo.debtorsSalesDaysRC!,
                                    prevYearInfo.debtorsSalesDaysRC!)),
                            Divider(
                              color: AppTheme.colorGray8,
                            ),
                          ],
                        )
                          ),

                    Visibility(
                      visible: currentYearInfo.pAYABLESTOSALESRC!=null && prevYearInfo.pAYABLESTOSALESRC !=null,
                        child: Column(
                          children: <Widget>[
                            ItemRowWidget("Payable To Sales",
                                currentYearInfo.pAYABLESTOSALESRC,
                                AppUtils.getPercentageOfyears(
                                    currentYearInfo.pAYABLESTOSALESRC!,
                                    prevYearInfo.pAYABLESTOSALESRC!)),
                            Divider(
                              color: AppTheme.colorGray8,
                            ),
                          ],
                        )
                    ),
                    Visibility(
                      visible: currentYearInfo.cashConversionCycleDaysRC!=null && prevYearInfo.cashConversionCycleDaysRC!=null,
                        child: Column(
                          children: <Widget>[
                            ItemRowWidget("Cash Conversion Cycle (Days)",
                                currentYearInfo.cashConversionCycleDaysRC,
                                AppUtils.getPercentageOfyears(
                                    currentYearInfo.cashConversionCycleDaysRC!,
                                    prevYearInfo.cashConversionCycleDaysRC!)),
                            Divider(
                              color: AppTheme.colorGray8,
                            ),
                          ],
                        ),
                    ),
                    Visibility(
                      visible: currentYearInfo.sALESTOFIXEDASSETSRC!=null && prevYearInfo.sALESTOFIXEDASSETSRC!=null,
                        child: Column(
                              children: <Widget>[
                                ItemRowWidget("Sales To Fixed Asset",
                                    currentYearInfo.sALESTOFIXEDASSETSRC,
                                    AppUtils.getPercentageOfyears(
                                        currentYearInfo.sALESTOFIXEDASSETSRC!,
                                        prevYearInfo.sALESTOFIXEDASSETSRC!)),
                                Divider(
                                  color: AppTheme.colorGray8,
                                ),
                              ],
                            ),
                          ),
                    Visibility(
                      visible: currentYearInfo.receivablesTotalAssetsRN!=null && prevYearInfo.receivablesTotalAssetsRN!=null,
                        child: Column(
                              children: <Widget>[
                                ItemRowWidget("Receivables To Total Assets",
                                    currentYearInfo.receivablesTotalAssetsRN,
                                    AppUtils.getPercentageOfyears(
                                        currentYearInfo.receivablesTotalAssetsRN!,
                                        prevYearInfo.receivablesTotalAssetsRN!)),
                                Divider(
                                  color: AppTheme.colorGray8,
                                ),
                              ],
                            ),
                          ),
                    Container(
                      decoration: const BoxDecoration(
                        color: AppTheme.colorGray8,
                        borderRadius: BorderRadius.all(
                          Radius.circular(0),
                        ),
                      ),
                      width: double.infinity,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Profitability",
                              style: TextStyle(
                                  color: AppTheme.colorGray2,
                                  fontFamily: 'RobotoMedium',
                                  fontSize: 14,
                                  letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Visibility(
                      visible: currentYearInfo.netProfitMarginRC!=null && prevYearInfo.netProfitMarginRC!=null,
                        child: Column(
                              children: <Widget>[
                                ItemRowWidget("Net Profit Margin %",
                                    currentYearInfo.netProfitMarginRC,
                                    AppUtils.getDiffOfyears(
                                        currentYearInfo.netProfitMarginRC!,
                                        prevYearInfo.netProfitMarginRC!)),
                                Divider(
                                  color: AppTheme.colorGray8,
                                ),
                              ],
                            ),
                          ),

                    Visibility(
                      visible: currentYearInfo.ebitdaMarginRA!=null && prevYearInfo.ebitdaMarginRA!=null,
                        child: Column(
                              children: <Widget>[
                                ItemRowWidget("Ebitda Margin %",
                                    currentYearInfo.ebitdaMarginRA,
                                    AppUtils.getDiffOfyears(
                                        currentYearInfo.ebitdaMarginRA!,
                                        prevYearInfo.ebitdaMarginRA!)),
                                Divider(
                                  color: AppTheme.colorGray8,
                                ),
                              ],
                            ),
                          ),
                    Visibility(
                      visible: currentYearInfo.returnOnEquityRC!=null && prevYearInfo.returnOnEquityRC!=null,
                        child: Column(
                              children: <Widget>[
                                ItemRowWidget("Return On Equity %",
                                    currentYearInfo.returnOnEquityRC,
                                    AppUtils.getDiffOfyears(
                                        currentYearInfo.returnOnEquityRC!,
                                        prevYearInfo.returnOnEquityRC!)),
                                Divider(
                                  color: AppTheme.colorGray8,
                                ),
                              ],
                            ),
                          ),
                    Visibility(
                      visible: currentYearInfo.rETURNONCAPITALEMPLOYEDRA!=null && prevYearInfo.rETURNONCAPITALEMPLOYEDRA!=null,
                        child: Column(
                          children: <Widget>[
                            ItemRowWidget("Return On Capital Employed %",
                                currentYearInfo.rETURNONCAPITALEMPLOYEDRA,
                                AppUtils.getDiffOfyears(
                                    currentYearInfo.rETURNONCAPITALEMPLOYEDRA!,
                                    prevYearInfo.rETURNONCAPITALEMPLOYEDRA!)),
                            Divider(
                              color: AppTheme.colorGray8,
                            ),
                          ],
                        )
                    ),
                    Visibility(
                      visible: currentYearInfo.nETWORTHRATIORA!=null && prevYearInfo.nETWORTHRATIORA!=null,
                        child: Column(
                              children: <Widget>[
                                ItemRowWidget("Net Worth Margin %",
                                    currentYearInfo.nETWORTHRATIORA,
                                    AppUtils.getDiffOfyears(
                                        currentYearInfo.nETWORTHRATIORA!,
                                        prevYearInfo.nETWORTHRATIORA!)),
                                Divider(
                                  color: AppTheme.colorGray8,
                                ),
                              ],
                            ),
                          ),
                    Visibility(
                      visible: currentYearInfo.returnOnPartnersFundRL!=null && prevYearInfo.returnOnPartnersFundRL!=null,
                        child: Column(
                              children: <Widget>[
                                ItemRowWidget("Return On Partners Fund %",
                                    currentYearInfo.returnOnPartnersFundRL,
                                    AppUtils.getDiffOfyears(
                                        currentYearInfo.returnOnPartnersFundRL!,
                                        prevYearInfo.returnOnPartnersFundRL!)),
                                Divider(
                                  color: AppTheme.colorGray8,
                                ),
                              ],
                            ),
                          ),
                    Visibility(
                      visible: currentYearInfo.totalRevenueFromOperationsTotalFinancialAssetsRN!=null && prevYearInfo.totalRevenueFromOperationsTotalFinancialAssetsRN!=null,
                        child: Column(
                              children: <Widget>[
                                ItemRowWidget("Revenue To Total Financial Assets %",
                                    currentYearInfo.totalRevenueFromOperationsTotalFinancialAssetsRN,
                                    AppUtils.getDiffOfyears(
                                        currentYearInfo.totalRevenueFromOperationsTotalFinancialAssetsRN!,
                                        prevYearInfo.totalRevenueFromOperationsTotalFinancialAssetsRN!)),
                                Divider(
                                  color: AppTheme.colorGray8,
                                ),
                              ],
                            ),
                          ),
                    Container(
                      decoration: const BoxDecoration(
                        color: AppTheme.colorGray8,
                        borderRadius: BorderRadius.all(
                          Radius.circular(0),
                        ),
                      ),
                      width: double.infinity,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Earning/Growth",
                              style: TextStyle(
                                  color: AppTheme.colorGray2,
                                  fontFamily: 'RobotoMedium',
                                  fontSize: 14,
                                  letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Visibility(
                      visible: currentYearInfo.eQUITYMULTIPLIERRC!=null && prevYearInfo.eQUITYMULTIPLIERRC!=null,
                        child: Column(
                              children: <Widget>[
                                ItemRowWidget("Equity Multiplier",
                                    currentYearInfo.eQUITYMULTIPLIERRC,
                                    AppUtils.getPercentageOfyears(
                                        currentYearInfo.eQUITYMULTIPLIERRC!,
                                        prevYearInfo.eQUITYMULTIPLIERRC!)),
                                Divider(
                                  color: AppTheme.colorGray8,
                                ),
                              ],
                            ),
                          ),
                    Visibility(
                      visible: currentYearInfo.revenueGrowthRC!=null && prevYearInfo.revenueGrowthRC!=null,
                        child: Column(
                              children: <Widget>[
                                ItemRowWidget("Revenue Growth %",
                                    currentYearInfo.revenueGrowthRC,
                                    AppUtils.getDiffOfyears(
                                        currentYearInfo.revenueGrowthRC!,
                                        prevYearInfo.revenueGrowthRC!)),
                                Divider(
                                  color: AppTheme.colorGray8,
                                ),
                              ],
                            ),
                          ),

                    Container(
                      decoration: const BoxDecoration(
                        color: AppTheme.colorGray8,
                        borderRadius: BorderRadius.all(
                          Radius.circular(0),
                        ),
                      ),
                      width: double.infinity,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Levarage",
                              style: TextStyle(
                                  color: AppTheme.colorGray2,
                                  fontFamily: 'RobotoMedium',
                                  fontSize: 14,
                                  letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Visibility(
                        child: Column(
                              children: <Widget>[
                                ItemRowWidget("Total Loans To Total Assets",
                                    currentYearInfo.totalLoansTotalAssetsRN,
                                    AppUtils.getPercentageOfyears(
                                        currentYearInfo.totalLoansTotalAssetsRN!,
                                        prevYearInfo.totalLoansTotalAssetsRN!)),
                                Divider(
                                  color: AppTheme.colorGray8,
                                ),
                              ],
                            ),
                          ),
                    Visibility(
                      visible: currentYearInfo.totalInvestmentsTotalAssetsRN!=null && prevYearInfo.totalInvestmentsTotalAssetsRN!=null,
                        child: Column(
                              children: <Widget>[
                                ItemRowWidget("Total Investments To Total Assets",
                                    currentYearInfo.totalInvestmentsTotalAssetsRN,
                                    AppUtils.getPercentageOfyears(
                                        currentYearInfo.totalInvestmentsTotalAssetsRN!,
                                        prevYearInfo.totalInvestmentsTotalAssetsRN!)),
                                Divider(
                                  color: AppTheme.colorGray8,
                                ),
                              ],
                            ),
                          ),

                    Visibility(
                      visible: currentYearInfo.dEBTTOEBITDARA!=null && prevYearInfo.dEBTTOEBITDARA!=null,
                        child: Column(
                              children: <Widget>[
                                ItemRowWidget("Debt To Ebitda",
                                    currentYearInfo.dEBTTOEBITDARA,
                                    AppUtils.getPercentageOfyears(
                                        currentYearInfo.dEBTTOEBITDARA!,
                                        prevYearInfo.dEBTTOEBITDARA!)),
                                Divider(
                                  color: AppTheme.colorGray8,
                                ),
                              ],
                            ),
                          ),

                    Container(
                      decoration: const BoxDecoration(
                        color: AppTheme.colorGray8,
                        borderRadius: BorderRadius.all(
                          Radius.circular(0),
                        ),
                      ),
                      width: double.infinity,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Solvency",
                              style: TextStyle(
                                  color: AppTheme.colorGray2,
                                  fontFamily: 'RobotoMedium',
                                  fontSize: 14,
                                  letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Visibility(
                      visible: currentYearInfo.debtEquityRC!=null && prevYearInfo.debtEquityRC!=null,
                        child: Column(
                              children: <Widget>[
                                ItemRowWidget("Debt To Equity",
                                    currentYearInfo.debtEquityRC,
                                    AppUtils.getPercentageOfyears(
                                        currentYearInfo.debtEquityRC!,
                                        prevYearInfo.debtEquityRC!)),
                                Divider(
                                  color: AppTheme.colorGray8,
                                ),
                              ],
                            ),
                          ),

                    Visibility(
                      visible: currentYearInfo.iNTERESTCOVERAGERATIORA!=null && prevYearInfo.iNTERESTCOVERAGERATIORA!=null,
                        child: Column(
                              children: <Widget>[
                                ItemRowWidget("Interest Coverage Ratio",
                                    currentYearInfo.iNTERESTCOVERAGERATIORA,
                                    AppUtils.getPercentageOfyears(
                                        currentYearInfo.iNTERESTCOVERAGERATIORA!,
                                        prevYearInfo.iNTERESTCOVERAGERATIORA!)),
                                Divider(
                                  color: AppTheme.colorGray8,
                                ),
                              ],
                            ),
                          ),
                    Visibility(
                      visible: currentYearInfo.debtPartnersFundRL!=null && prevYearInfo.debtPartnersFundRL!=null,
                        child: Column(
                              children: <Widget>[
                                ItemRowWidget("Debt To Partners Fund",
                                    currentYearInfo.debtPartnersFundRL,
                                    AppUtils.getPercentageOfyears(
                                        currentYearInfo.debtPartnersFundRL!,
                                        prevYearInfo.debtPartnersFundRL!)),
                                Divider(
                                  color: AppTheme.colorGray8,
                                ),
                              ],
                            ),
                          ),

                  ],
                )

              ],
            ),
          ),
        ),
      ),

    );
  }
}
