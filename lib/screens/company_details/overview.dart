import 'package:flutter/material.dart';
import 'package:the_company_check/models/company_details_model.dart';
import 'package:the_company_check/routs/common_navigation.dart';
import 'package:the_company_check/routs/route_name.dart';
import 'package:the_company_check/theme/app_theme.dart';
import 'package:the_company_check/widgets/custom_compac_button.dart';

import '../../widgets/company_info_card.dart';
import '../../widgets/custom_appbar.dart';
import 'package:the_company_check/utils/app_utils.dart';

import '../../widgets/directors_signatories_widget.dart';
import '../../widgets/industry_segment_widget.dart';
import '../../widgets/social_meadia_widget.dart';

class OverView extends StatefulWidget {
  const OverView(@required this.companyData, {super.key});

  final Datum? companyData;

  @override
  State<OverView> createState() => _OverViewState();
}

class _OverViewState extends State<OverView> {
  List<IndustrySegment> getList() {
    List<IndustrySegment>? list = List.empty(growable: true);
    var elements = widget.companyData!.industrySegments;
    if (elements != null) {
      for (var element in elements) {
        list.add(element);
      }
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(onChanged: (value) {
        debugPrint(value);
      }),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Colors.white),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: CompanyInfoCard(widget.companyData),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(45, 10, 45, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      CustomCompacButton("Buy Report", () {
                        CommonNavigation().navigateScreens(
                            context, RouteName.routNameFinancials);
                      }, 59, 89, 161, 1, 255, 252, 248, 1),
                    ],
                  ),
                ),
                // Contains
                Card(
                  elevation: 0,
                  margin: EdgeInsets.only(left: 0.0, right: 0.0, top: 2.0),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Text("About",
                            style: TextStyle(
                                color: AppTheme.colorGray4,
                                fontFamily: 'RobotoMedium',
                                fontSize: 18,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.5 /*PERCENT not supported*/
                                )),
                        Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Text(
                              "A problem isn't truly solved until it's solved for all. Googlers build products that help create opportunities for everyone, whether down the street or across the globe. Bring your insight, imagination and a healthy disregard for the impossible. Bring everything that makes you unique. Together, we can build for everyone.",
                              style: TextStyle(
                                  color: Color.fromRGBO(138, 138, 138, 1),
                                  fontFamily: 'RobotoRegular',
                                  fontSize: 10,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                                  )),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: AppTheme.colorPink, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: AppTheme.colorPink,
                  elevation: 4.0,
                  margin:
                      const EdgeInsets.only(left: 4.0, right: 4.0, top: 2.0),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Expanded(
                              child: Text(
                                "Authorrised \nCapital",
                                style: TextStyle(
                                  color: AppTheme.colorGray4,
                                  fontFamily: 'RobotoRegular',
                                  fontSize: 10,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "Paid Up \nCapital",
                                style: TextStyle(
                                  color: AppTheme.colorGray4,
                                  fontFamily: 'RobotoRegular',
                                  fontSize: 10,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5,
                                ),
                              ),
                            ),
                            Text(
                              "Sum of \nCharges",
                              style: TextStyle(
                                color: AppTheme.colorGray4,
                                fontFamily: 'RobotoRegular',
                                fontSize: 10,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                "${AppUtils.getFormatedAmountInCR(widget.companyData?.authorisedCapital, 2)}",
                                style: TextStyle(
                                  color: AppTheme.colorGray4,
                                  fontFamily: 'RobotoMedium',
                                  fontSize: 14,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "${AppUtils.getFormatedAmountInCR(widget.companyData?.paidUpCapital, 2)}",
                                style: TextStyle(
                                  color: AppTheme.colorGray4,
                                  fontFamily: 'RobotoMedium',
                                  fontSize: 14,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5,
                                ),
                              ),
                            ),
                            Text(
                              "${AppUtils.getFormatedAmountInCR(widget.companyData?.openCharges, 2)}",
                              style: TextStyle(
                                color: AppTheme.colorGray4,
                                fontFamily: 'RobotoMedium',
                                fontSize: 14,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                                height: 1.5,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 0,
                  margin: EdgeInsets.only(left: 0.0, right: 0.0, top: 2.0),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(14.0, 22.0, 14.0, 22.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text("Details",
                            style: TextStyle(
                                color: AppTheme.colorGray4,
                                fontFamily: 'RobotoMedium',
                                fontSize: 18,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.5 /*PERCENT not supported*/
                                )),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 4.0, bottom: 4.0),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        child: const Text("CIN",
                                            style: TextStyle(
                                                color: AppTheme.colorGray4,
                                                fontFamily: 'RobotoRegular',
                                                fontSize: 12,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height:
                                                    1.5 /*PERCENT not supported*/
                                                )),
                                      ),
                                    ),
                                    Expanded(
                                        child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                          "${widget.companyData?.currentCin}",
                                          style: TextStyle(
                                              color: AppTheme.lightGray138_1,
                                              fontFamily: 'RobotoRegular',
                                              fontSize: 12,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height:
                                                  1.5 /*PERCENT not supported*/
                                              )),
                                    )),
                                  ],
                                ),
                              ),
                              Divider(
                                color: AppTheme.colorGray,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 4.0, bottom: 4.0),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        child: const Text("Company Status",
                                            style: TextStyle(
                                                color: AppTheme.colorGray4,
                                                fontFamily: 'RobotoRegular',
                                                fontSize: 12,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height:
                                                    1.5 /*PERCENT not supported*/
                                                )),
                                      ),
                                    ),
                                    Expanded(
                                        child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                          "${widget.companyData?.companyStatus}",
                                          style: TextStyle(
                                              color: AppUtils.getColorCode(
                                                  widget.companyData
                                                      ?.companyStatus),
                                              fontFamily: 'RobotoRegular',
                                              fontSize: 12,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height:
                                                  1.5 /*PERCENT not supported*/
                                              )),
                                    )),
                                  ],
                                ),
                              ),
                              Divider(
                                color: AppTheme.colorGray,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 4.0, bottom: 4.0),
                                child: widget.companyData?.bseNumber !="" &&
                                    widget.companyData?.nseNumber !="" ? Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: const Text("Stock Symbol",
                                          style: TextStyle(
                                              color: AppTheme.colorGray4,
                                              fontFamily: 'RobotoRegular',
                                              fontSize: 12,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height:
                                                  1.5 /*PERCENT not supported*/
                                              )),
                                    ),
                                    Expanded(
                                        child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 50.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              child: widget.companyData?.bseNumber !="" ? Row(
                                                children: <Widget>[
                                                  Text(
                                                    "BSE : ${widget.companyData?.bseNumber}",
                                                    style: TextStyle(
                                                        color: AppTheme.colorGray,
                                                        fontFamily:
                                                            'RobotoRegular',
                                                        fontSize: 12,
                                                        letterSpacing:
                                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        height:
                                                            1.5 /*PERCENT not supported*/
                                                        ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 8.0),
                                                    child: SizedBox(
                                                        height: 8,
                                                        width: 8,
                                                        child: Image.asset(
                                                            'assets/images/stock_symbol.png')),
                                                  )
                                                ],
                                              ) : null,
                                            ),
                                            Container(
                                              child:widget.companyData?.nseNumber !="" ? Row(
                                                children: <Widget>[
                                                  Text(
                                                    "NSE : ${widget.companyData?.nseNumber}",
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                        color: AppTheme.colorGray,
                                                        fontFamily:
                                                            'RobotoRegular',
                                                        fontSize: 12,
                                                        letterSpacing:
                                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        height:
                                                            1.5 /*PERCENT not supported*/
                                                        ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 8.0),
                                                    child: SizedBox(
                                                        height: 8,
                                                        width: 8,
                                                        child: Image.asset(
                                                            'assets/images/stock_symbol.png')),
                                                  )
                                                ],
                                              ) : null,
                                            )
                                          ],
                                        ),
                                      ),
                                    )),
                                  ],
                                ) : null,
                              ),
                              Container(
                                child: widget.companyData?.bseNumber !="" &&
                                    widget.companyData?.nseNumber !="" ? Divider(
                                  color: AppTheme.colorGray,
                                ) : null,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 4.0, bottom: 4.0),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        child: const Text("ROC Code",
                                            style: TextStyle(
                                                color: AppTheme.colorGray4,
                                                fontFamily: 'RobotoRegular',
                                                fontSize: 12,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height:
                                                    1.5 /*PERCENT not supported*/
                                                )),
                                      ),
                                    ),
                                    Expanded(
                                        child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                          "${widget.companyData?.rocCode}",
                                          style: TextStyle(
                                              color: AppTheme.lightGray138_1,
                                              fontFamily: 'RobotoRegular',
                                              fontSize: 12,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height:
                                                  1.5 /*PERCENT not supported*/
                                              )),
                                    )),
                                  ],
                                ),
                              ),
                              Divider(
                                color: AppTheme.colorGray,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 4.0, bottom: 4.0),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        child: const Text("Company No.",
                                            style: TextStyle(
                                                color: AppTheme.colorGray4,
                                                fontFamily: 'RobotoRegular',
                                                fontSize: 12,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height:
                                                    1.5 /*PERCENT not supported*/
                                                )),
                                      ),
                                    ),
                                    Expanded(
                                        child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Text("Company No.",
                                          style: TextStyle(
                                              color: AppTheme.lightGray138_1,
                                              fontFamily: 'RobotoRegular',
                                              fontSize: 12,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height:
                                                  1.5 /*PERCENT not supported*/
                                              )),
                                    )),
                                  ],
                                ),
                              ),
                              Divider(
                                color: AppTheme.colorGray,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 4.0, bottom: 4.0),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        child: const Text("Company Category",
                                            style: TextStyle(
                                                color: AppTheme.colorGray4,
                                                fontFamily: 'RobotoRegular',
                                                fontSize: 12,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height:
                                                    1.5 /*PERCENT not supported*/
                                                )),
                                      ),
                                    ),
                                    Expanded(
                                        child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                          "${widget.companyData?.companyCategory}",
                                          style: TextStyle(
                                              color: AppTheme.lightGray138_1,
                                              fontFamily: 'RobotoRegular',
                                              fontSize: 12,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height:
                                                  1.5 /*PERCENT not supported*/
                                              )),
                                    )),
                                  ],
                                ),
                              ),
                              Divider(
                                color: AppTheme.colorGray,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 4.0, bottom: 4.0),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        child: const Text("Company Class",
                                            style: TextStyle(
                                                color: AppTheme.colorGray4,
                                                fontFamily: 'RobotoRegular',
                                                fontSize: 12,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height:
                                                    1.5 /*PERCENT not supported*/
                                                )),
                                      ),
                                    ),
                                    Expanded(
                                        child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                          "${widget.companyData?.classOfCompany}",
                                          style: TextStyle(
                                              color: AppTheme.lightGray138_1,
                                              fontFamily: 'RobotoRegular',
                                              fontSize: 12,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height:
                                                  1.5 /*PERCENT not supported*/
                                              )),
                                    )),
                                  ],
                                ),
                              ),
                              Divider(
                                color: AppTheme.colorGray,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 4.0, bottom: 4.0),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        child: const Text("Incorporation date",
                                            style: TextStyle(
                                                color: AppTheme.colorGray4,
                                                fontFamily: 'RobotoRegular',
                                                fontSize: 12,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height:
                                                    1.5 /*PERCENT not supported*/
                                                )),
                                      ),
                                    ),
                                    Expanded(
                                        child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                          "${AppUtils.getDDMMYY(widget.companyData?.dateOfIncorporation)}",
                                          style: TextStyle(
                                              color: AppTheme.lightGray138_1,
                                              fontFamily: 'RobotoRegular',
                                              fontSize: 12,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height:
                                                  1.5 /*PERCENT not supported*/
                                              )),
                                    )),
                                  ],
                                ),
                              ),
                              Divider(
                                color: AppTheme.colorGray,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 4.0, bottom: 4.0),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        child: const Text("Date of AGM",
                                            style: TextStyle(
                                                color: AppTheme.colorGray4,
                                                fontFamily: 'RobotoRegular',
                                                fontSize: 12,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height:
                                                    1.5 /*PERCENT not supported*/
                                                )),
                                      ),
                                    ),
                                    Expanded(
                                        child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                          "${AppUtils.getDDMMYY(widget.companyData?.dateOfLastAgm)}",
                                          style: TextStyle(
                                              color: AppTheme.lightGray138_1,
                                              fontFamily: 'RobotoRegular',
                                              fontSize: 12,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height:
                                                  1.5 /*PERCENT not supported*/
                                              )),
                                    )),
                                  ],
                                ),
                              ),
                              Divider(
                                color: AppTheme.colorGray,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 4.0, bottom: 4.0),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        child: const Text(
                                            "Date of Balance Sheet",
                                            style: TextStyle(
                                                color: AppTheme.colorGray4,
                                                fontFamily: 'RobotoRegular',
                                                fontSize: 12,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height:
                                                    1.5 /*PERCENT not supported*/
                                                )),
                                      ),
                                    ),
                                    Expanded(
                                        child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                          "${AppUtils.getDDMMYY(widget.companyData?.dateOfBalanceSheet)}",
                                          style: TextStyle(
                                              color: AppTheme.lightGray138_1,
                                              fontFamily: 'RobotoRegular',
                                              fontSize: 12,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height:
                                                  1.5 /*PERCENT not supported*/
                                              )),
                                    )),
                                  ],
                                ),
                              ),
                              Divider(
                                color: AppTheme.colorGray,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 4.0, bottom: 4.0),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        child: const Text("Listing Status",
                                            style: TextStyle(
                                                color: AppTheme.colorGray4,
                                                fontFamily: 'RobotoRegular',
                                                fontSize: 12,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height:
                                                    1.5 /*PERCENT not supported*/
                                                )),
                                      ),
                                    ),
                                    Expanded(
                                        child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                          "${widget.companyData?.listingStatus}",
                                          style: TextStyle(
                                              color: AppTheme.lightGray138_1,
                                              fontFamily: 'RobotoRegular',
                                              fontSize: 12,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height:
                                                  1.5 /*PERCENT not supported*/
                                              )),
                                    )),
                                  ],
                                ),
                              ),
                              Divider(
                                color: AppTheme.colorGray,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 4.0, bottom: 4.0),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        child: const Text("ACTIVE compliance",
                                            style: TextStyle(
                                                color: AppTheme.colorGray4,
                                                fontFamily: 'RobotoRegular',
                                                fontSize: 12,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height:
                                                    1.5 /*PERCENT not supported*/
                                                )),
                                      ),
                                    ),
                                    Expanded(
                                        child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                          "${widget.companyData?.activeCompliance}",
                                          style: TextStyle(
                                              color: AppTheme.lightGray138_1,
                                              fontFamily: 'RobotoRegular',
                                              fontSize: 12,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height:
                                                  1.5 /*PERCENT not supported*/
                                              )),
                                    )),
                                  ],
                                ),
                              ),
                              Divider(
                                color: AppTheme.colorGray,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 4.0, bottom: 4.0),
                                child: Visibility(
                                  visible: widget.companyData!.statusUnderCirp!
                                          .isNotEmpty
                                      ? true
                                      : false,
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Container(
                                          child: const Text("Status Under CIRP",
                                              style: TextStyle(
                                                  color: AppTheme.colorGray4,
                                                  fontFamily: 'RobotoRegular',
                                                  fontSize: 12,
                                                  letterSpacing:
                                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height:
                                                      1.5 /*PERCENT not supported*/
                                                  )),
                                        ),
                                      ),
                                      Expanded(
                                          child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                            "${widget.companyData?.statusUnderCirp}",
                                            style: TextStyle(
                                                color: AppTheme.lightGray138_1,
                                                fontFamily: 'RobotoRegular',
                                                fontSize: 12,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height:
                                                    1.5 /*PERCENT not supported*/
                                                )),
                                      )),
                                    ],
                                  ),
                                ),
                              ),
                              Visibility(
                                visible: widget.companyData!.statusUnderCirp!
                                        .isNotEmpty
                                    ? true
                                    : false,
                                child: Divider(
                                  color: AppTheme.colorGray,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Segment Industry
                Container(
                  child: IndustrySegmentWidget("Industry & Segment", getList()),
                ),
                // Container(
                //   child: DirecorsSignatoryWidget("Directors & Signatories",widget.companyData?.currentDirectors),
                // ),

                // Contact Details
                Card(
                  elevation: 0,
                  margin: EdgeInsets.only(left: 0.0, right: 0.0, top: 2.0),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(14.0, 22.0, 14.0, 22.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        const Text("Contact Details",
                            style: TextStyle(
                                color: AppTheme.colorGray4,
                                fontFamily: 'RobotoMedium',
                                fontSize: 18,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.5 /*PERCENT not supported*/
                                )),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 16.0),
                              child: SizedBox(
                                width: 180,
                                child: Visibility(
                                  visible:
                                      widget.companyData?.address?.location !=
                                              null
                                          ? true
                                          : false,
                                  child: Column(
                                    children: <Widget>[
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Location",
                                          style: TextStyle(
                                              color: AppTheme.colorGray,
                                              fontFamily: 'RobotoRegular',
                                              fontSize: 12,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height:
                                                  1.5 /*PERCENT not supported*/
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 8.0),
                                        child: Text(
                                          "${widget.companyData?.address?.location}",
                                          style: TextStyle(
                                              color: AppTheme.colorGray6,
                                              fontFamily: 'RobotoMedium',
                                              fontSize: 12,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height:
                                                  1.5 /*PERCENT not supported*/
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(top: 16.0),
                              child: SizedBox(
                                width: 120,
                                child: Column(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Website",
                                        style: TextStyle(
                                            color: AppTheme.colorGray,
                                            fontFamily: 'RobotoRegular',
                                            fontSize: 12,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height:
                                                1.5 /*PERCENT not supported*/
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: InkWell(
                                          onTap: (){
                                            AppUtils.redirectOnWeb(widget.companyData?.website);
                                          },
                                          child: Text(
                                            "${widget.companyData?.website}",
                                            style: TextStyle(
                                                color: AppTheme.colorGray6,
                                                fontFamily: 'RobotoMedium',
                                                fontSize: 12,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height:
                                                    1.5 /*PERCENT not supported*/
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 16.0),
                              child: SizedBox(
                                width: 180,
                                child: Column(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Telephone",
                                        style: TextStyle(
                                            color: AppTheme.colorGray,
                                            fontFamily: 'RobotoRegular',
                                            fontSize: 12,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height:
                                                1.5 /*PERCENT not supported*/
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "${widget.companyData?.address?.registeredCity}",
                                          style: TextStyle(
                                              color: AppTheme.colorGray6,
                                              fontFamily: 'RobotoMedium',
                                              fontSize: 12,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height:
                                                  1.5 /*PERCENT not supported*/
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(top: 16.0),
                              child: SizedBox(
                                width: 120,
                                child: Column(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Email Address",
                                        style: TextStyle(
                                            color: AppTheme.colorGray,
                                            fontFamily: 'RobotoRegular',
                                            fontSize: 12,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height:
                                                1.5 /*PERCENT not supported*/
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "${widget.companyData?.website}",
                                          style: TextStyle(
                                              color: AppTheme.colorGray6,
                                              fontFamily: 'RobotoMedium',
                                              fontSize: 12,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height:
                                                  1.5 /*PERCENT not supported*/
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                // Social Meadia list
                Container(
                  child: SocialMeadiaWidget(
                      "Social Media", widget.companyData?.social),
                ),
                // Name History details ********************************************************
                Card(
                  elevation: 0,
                  margin: EdgeInsets.only(left: 0.0, right: 0.0, top: 2.0),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(14.0, 22.0, 14.0, 22.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        const Text("Name History",
                            style: TextStyle(
                                color: AppTheme.colorGray4,
                                fontFamily: 'RobotoMedium',
                                fontSize: 18,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.5 /*PERCENT not supported*/
                                )),
                        Padding(
                          padding: const EdgeInsets.only(top: 18.0),
                          child: SizedBox(
                            // height: MediaQuery.of(context).size.shortestSide,
                            child: ListView.builder(
                                shrinkWrap: true,
                                itemCount:
                                    widget.companyData?.nameHistory?.length,
                                itemBuilder: (context, index) {
                                  return Row(
                                    children: <Widget>[
                                      Expanded(
                                          child: Padding(
                                        padding:
                                            const EdgeInsets.only(top: 8.0),
                                        child: Text(
                                            "${widget.companyData?.nameHistory?[index]}",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    138, 138, 138, 1),
                                                fontFamily: 'RobotoMedium',
                                                fontSize: 12,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height:
                                                    1.5 /*PERCENT not supported*/
                                                )),
                                      )),
                                      // const Text("",
                                      //     style: TextStyle(
                                      //         color: Color.fromRGBO(138, 138, 138, 1),
                                      //         fontFamily: 'RobotoBold',
                                      //         fontSize: 10,
                                      //         letterSpacing:
                                      //         0 /*percentages not used in flutter. defaulting to zero*/,
                                      //         fontWeight: FontWeight.normal,
                                      //         height: 1.5 /*PERCENT not supported*/
                                      //     )),
                                    ],
                                  );
                                }),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
