import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';
import 'package:the_company_check/theme/app_theme.dart';
import 'package:the_company_check/utils/app_utils.dart';

import '../../models/financials_model.dart';
import '../charges/mywidget.dart';

class ProfitAndLoss extends StatefulWidget {
  final String title;
  bool isProfitAndLoss = true;
  bool isBalanceSheet = false;
  bool isRatio = false;
  final FinancialsModel financialsModel;

  ProfitAndLoss(
      {Key? key,
      required this.title,
      required this.isProfitAndLoss,
      required this.isBalanceSheet,
      required this.isRatio,
      required this.financialsModel})
      : super(key: key);

  @override
  State<ProfitAndLoss> createState() => _ProfitAndLossState();
}

class _ProfitAndLossState extends State<ProfitAndLoss> {
  int selectedIndex = 0;

  getList(int index) {
    var balanceSheetAoc;
    if (widget.isProfitAndLoss) {
      balanceSheetAoc = widget.financialsModel?.data?.profitNLossAoc?[index];
    }
    if (widget.isBalanceSheet) {
      balanceSheetAoc = widget.financialsModel?.data?.balanceSheetAoc?[index];
    }
    if (widget.isRatio) {
      balanceSheetAoc = widget.financialsModel?.data?.ratioDetails?[index];
    }
    return balanceSheetAoc;
  }

  getListLength(int selectedInd) {
    var index = 0;
    if (widget.isProfitAndLoss) {
      index = widget.financialsModel?.data?.profitNLossAoc?[selectedInd]
              .toJson()
              .keys
              .length ??
          0;
    }
    if (widget.isBalanceSheet) {
      index = widget.financialsModel?.data?.balanceSheetAoc?[selectedInd]
              .toJson()
              .keys
              .length ??
          0;
    }
    if (widget.isRatio) {
      index = widget.financialsModel?.data?.ratioDetails?[selectedInd]
              .toJson()
              .keys
              .length ??
          0;
    }
    return index;
    // widget.financialsModel?.data?.balanceSheetAoc?[selectedIndex].toJson().keys.length ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.only(left: 18, top: 0, right: 18),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Visibility(
                          visible: widget.isProfitAndLoss,
                          child: Image.asset(
                            'assets/images/pandl.png',
                            width: 50,
                          )),
                      Padding(
                        padding: EdgeInsets.only(left: 18.0),
                        child: Text(widget.title,
                            style: const TextStyle(
                                color: Color.fromRGBO(28, 60, 138, 1),
                                fontFamily: 'RobotoRegular',
                                fontSize: 18,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.5 /*PERCENT not supported*/
                                )),
                      )
                    ],
                  ),
                  AspectRatio(
                    aspectRatio: 20 / 7,
                    child: DChartBar(
                      data: const [
                        {
                          'id': 'Bar 1',
                          'data': [
                            {'domain': '2018', 'measure': 3},
                            {'domain': '2019', 'measure': 3},
                            {'domain': '2020', 'measure': 4},
                            {'domain': '2021', 'measure': 6},
                            {'domain': '2022', 'measure': 0.3},
                          ],
                        },
                        {
                          'id': 'Bar 2',
                          'data': [
                            {'domain': '2019', 'measure': 4},
                            {'domain': '2020', 'measure': 5},
                            {'domain': '2021', 'measure': 2},
                            {'domain': '2022', 'measure': 1},
                            {'domain': '2023', 'measure': 2.5},
                          ],
                        },
                      ],
                      // yAxisTitle: 'Year',
                      // xAxisTitle: 'Sale',
                      measureMin: 0,
                      measureMax: 8,
                      minimumPaddingBetweenLabel: 1,
                      domainLabelPaddingToAxisLine: 16,
                      axisLineTick: 2,
                      axisLinePointTick: 2,
                      axisLinePointWidth: 10,
                      axisLineColor: AppTheme.lightGray138_1,
                      measureLabelPaddingToAxisLine: 16,
                      barColor: (barData, index, id) => id == 'Bar 1'
                          ? AppTheme.bar1tColor
                          : AppTheme.bar2tColor,
                      // barValue: (barData, index) => '${barData['measure']}%',
                      showBarValue: true,
                      barValuePosition: BarValuePosition.outside,
                      verticalDirection: true,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 8,
                          height: 8,
                          decoration: const BoxDecoration(
                              color: Color.fromRGBO(59, 89, 161, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(8, 8))),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text("Revenue",
                              style: TextStyle(
                                  color: Color.fromRGBO(138, 138, 138, 1),
                                  fontFamily: 'RobotoRegular',
                                  fontSize: 12,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                                  )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Container(
                            width: 8,
                            height: 8,
                            decoration: const BoxDecoration(
                                color: AppTheme.bar2tColor,
                                borderRadius:
                                    BorderRadius.all(Radius.elliptical(8, 8))),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text("Net Income",
                              style: TextStyle(
                                  color: Color.fromRGBO(138, 138, 138, 1),
                                  fontFamily: 'RobotoRegular',
                                  fontSize: 12,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                                  )),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: SizedBox(
                      height: 38,
                      child: ListView.builder(
                          shrinkWrap: true, //just set this property
                          itemCount: widget.financialsModel?.data?.ratioDetails
                                  ?.length ??
                              0,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (_, index) {
                            var ratioDetail = widget
                                .financialsModel?.data?.ratioDetails?[index];
                            return Container(
                              color: Colors.accents[index % 32],
                              child: GestureDetector(
                                onTap: () {
                                  selectedIndex = index;
                                  setState(() {});
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Text(
                                      ratioDetail?.financialYear ?? "Av",
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      children: const <Widget>[
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Particulars",
                              style: TextStyle(
                                  color: AppTheme.colorGray2,
                                  fontFamily: 'RobotoMedium',
                                  fontSize: 16,
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
                            "31,03, 2021",
                            style: TextStyle(
                                color: AppTheme.colorGray2,
                                fontFamily: 'RobotoMedium',
                                fontSize: 16,
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
                              fontFamily: 'RobotoMedium',
                              fontSize: 16,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1.5 /*PERCENT not supported*/
                              ),
                        )
                      ],
                    ),
                  ),
                  const Divider(
                    color: AppTheme.colorGray,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListView.builder(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: getListLength(selectedIndex),
                          itemBuilder: (_, index) {
                            var balanceSheetAoc = getList(selectedIndex);
                            var balanceSheetAocData = balanceSheetAoc?.toJson();
                            var mykey;
                            var myValue;
                            var percentage="";
                            if (balanceSheetAocData?.values.toList().length >
                                index) {
                              mykey =
                                  balanceSheetAocData?.keys.toList()[index] ??
                                      "";
                              myValue =
                                  balanceSheetAocData?.values.toList()[index] ??
                                      "";
                              if (selectedIndex > 0) {
                                var preYearBalanceSheetAoc =
                                    getList(selectedIndex - 1);
                                var preYearBalanceSheetAocData =
                                    preYearBalanceSheetAoc?.toJson();
                                var preYearValue = preYearBalanceSheetAocData
                                        ?.values
                                        .toList()[index] ??
                                    "";
                                if (myValue != null && preYearValue != null) {
                                  if (myValue != "" &&
                                      preYearValue != "" &&
                                      myValue.runtimeType != String &&
                                      preYearValue.runtimeType != String &&
                                      myValue.runtimeType != bool) {
                                    percentage = AppUtils.getPercentageOfyears(
                                        myValue, preYearValue).toString();
                                    print("Percentage : $percentage");
                                  }
                                }
                              }
                            } else {
                              mykey = "";
                              myValue = "";
                            }
                            return MyRow(
                              mykey: mykey,
                              myValue: myValue.toString(),
                              isProfitAndLoss: widget.isProfitAndLoss,
                              isBalanceSheet: widget.isBalanceSheet,
                              isRatio: widget.isRatio,
                              percentage: percentage,
                            );
                          }),
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }
}
