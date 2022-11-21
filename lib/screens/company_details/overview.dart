import 'package:flutter/material.dart';
import 'package:the_company_check/routs/common_navigation.dart';
import 'package:the_company_check/routs/route_name.dart';
import 'package:the_company_check/screens/company_details/store/company_details_store.dart';
import 'package:the_company_check/theme/app_theme.dart';
import 'package:the_company_check/widgets/custom_compac_button.dart';
import 'package:the_company_check/widgets/custom_search_bar.dart';

class OverView extends StatefulWidget {
  const OverView({Key? key}) : super(key: key);

  @override
  State<OverView> createState() => _OverViewState();
}

class _OverViewState extends State<OverView> {
  CompanyDetailsStore companyDetailsStore = CompanyDetailsStore();

  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    companyDetailsStore.getCompanyDetails();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomSearch(),
      body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: AppTheme.lightGray138_1
          ),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Card(
                    margin: EdgeInsets.only(left: 0.0,right: 0.0,top: 0.0),
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          leading: Image.asset('assets/images/googleimg.png'),
                          title: Card(
                            elevation: 0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Text(
                                  "Google Software Solutions",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: AppTheme.lightGray138_1,
                                    fontFamily: 'RobotoRegular',
                                    fontSize: 16,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.normal,
                                    height: 1.5,
                                  ),
                                ),
                                Text("Gurgaon, Haryana",
                                    style: TextStyle(
                                        color: Color.fromRGBO(59, 89, 161, 1),
                                        fontFamily: 'RobotoRegular',
                                        fontSize: 10,
                                        letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1.5 /*PERCENT not supported*/
                                    )),
                                Text("www.google.com",
                                    style: TextStyle(
                                        color: Color.fromRGBO(59, 89, 161, 1),
                                        fontFamily: 'RobotoRegular',
                                        fontSize: 10,
                                        letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1.5 /*PERCENT not supported*/
                                    )),
                              ],
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const <Widget>[
                            Text(
                                "Google Ceramics Private Limited is a 10 years 3 months old Private incorpor",
                                style: TextStyle(
                                    color: Color.fromRGBO(138, 138, 138, 1),
                                    fontFamily: 'RobotoRegular',
                                    fontSize: 8,
                                    letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1.5 /*PERCENT not supported*/
                                )),
                            Text(
                              "Private Limited is a 10 years 3 months old Private Company incorporated on 02 Jul 2012. Its register...! ",
                              style: TextStyle(
                                  color: Color.fromRGBO(138, 138, 138, 1),
                                  fontFamily: 'RobotoRegular',
                                  fontSize: 8,
                                  letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(45, 10, 45, 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              CustomCompacButton("Follow", () {
                                CommonNavigation().navigateScreens(context, RouteName.routNameFinancials);

                              },59,89,161,1,
                                  255,252,248,1),
                              CustomCompacButton("Buy Report", () {

                              },255, 252, 248, 1,
                                  59,89,161,1)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Contains
                  Card(
                    elevation: 0,
                    margin: EdgeInsets.only(left: 0.0,right: 0.0,top: 2.0),
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Text("About",
                              style: TextStyle(
                                  color: Color.fromRGBO(138, 138, 138, 1),
                                  fontFamily: 'RobotoRegular',
                                  fontSize: 16,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                              )
                          ),

                          Text("A problem isn't truly solved until it's solved for all. Googlers build products that help create opportunities for everyone, whether down the street or across the globe. Bring your insight, imagination and a healthy disregard for the impossible. Bring everything that makes you unique. Together, we can build for everyone.",
                              style: TextStyle(
                                  color: Color.fromRGBO(138, 138, 138, 1),
                                  fontFamily: 'RobotoRegular',
                                  fontSize: 10,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                              )
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 0,
                    margin: EdgeInsets.only(left: 0.0,right: 0.0,top: 2.0),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(14.0, 22.0, 14.0, 22.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  <Widget>[
                          const Text("Details",
                              style: TextStyle(
                                  color: Color.fromRGBO(138, 138, 138, 1),
                                  fontFamily: 'RobotoRegular',
                                  fontSize: 16,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                              )
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Row(
                              children: <Widget>[
                                Expanded(child:Container(
                                  child: const Text("Company Status",
                                      style: TextStyle(
                                          color: Color.fromRGBO(138, 138, 138, 1),
                                          fontFamily: 'RobotoBold',
                                          fontSize: 10,
                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1.5 /*PERCENT not supported*/
                                      )
                                  ),
                                ), ),
                                const Expanded(child: Text("SIN",
                                    style: TextStyle(
                                        color: Color.fromRGBO(138, 138, 138, 1),
                                        fontFamily: 'RobotoBold',
                                        fontSize: 10,
                                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1.5 /*PERCENT not supported*/
                                    )
                                )),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Expanded(child:Container(
                                  child: const Text("Active",
                                      style: TextStyle(
                                          color: Color.fromRGBO(138, 138, 138, 1),
                                          fontFamily: 'RobotoBold',
                                          fontSize: 10,
                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1.5 /*PERCENT not supported*/
                                      )
                                  ),
                                ), ),
                                const Expanded(child: Text("L27100MH1907PLC000260",
                                    style: TextStyle(
                                        color: Color.fromRGBO(138, 138, 138, 1),
                                        fontFamily: 'RobotoBold',
                                        fontSize: 10,
                                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1.5 /*PERCENT not supported*/
                                    )
                                )),
                              ],
                            ),
                          ),

                        ],
                      ),

                    ),
                  ),
                  // Segment Industry
                  Card(
                    elevation: 0,
                    margin: EdgeInsets.only(left: 0.0,right: 0.0,top: 2.0),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(14.0, 22.0, 14.0, 22.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: const <Widget>[
                          Text("Segment Industry",
                              style: TextStyle(
                                  color: Color.fromRGBO(138, 138, 138, 1),
                                  fontFamily: 'RobotoBold',
                                  fontSize: 16,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                              )
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Text("Segment",
                                style: TextStyle(
                                    color: Color.fromRGBO(138, 138, 138, 1),
                                    fontFamily: 'RobotoRegular',
                                    fontSize: 10,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1.5 /*PERCENT not supported*/
                                )
                            ),
                          ),
                          Text("Construction Materials Retailers And Distributors",
                              style: TextStyle(
                                  color: Color.fromRGBO(138, 138, 138, 1),
                                  fontFamily: 'RobotoRegular',
                                  fontSize: 10,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                              )
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 18.0),
                            child: Text("Industry",
                                style: TextStyle(
                                    color: Color.fromRGBO(138, 138, 138, 1),
                                    fontFamily: 'RobotoRegular',
                                    fontSize: 16,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1.5 /*PERCENT not supported*/
                                )
                            ),
                          ),
                          Text("Metals And Minerals",
                              style: TextStyle(
                                  color: Color.fromRGBO(138, 138, 138, 1),
                                  fontFamily: 'RobotoRegular',
                                  fontSize: 10,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                              )
                          )

                        ],

                      ),

                    ),
                  ),

                  // Contact Details ***************************************************************

                  Card(
                    elevation: 0,
                    margin: EdgeInsets.only(left: 0.0,right: 0.0,top: 2.0),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(14.0, 22.0, 14.0, 22.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          const Text("Contact Details",
                              style: TextStyle(
                                  color: Color.fromRGBO(138, 138, 138, 1),
                                  fontFamily: 'RobotoRegular',
                                  fontSize: 16,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                              )
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 18.0),
                            child: Container(
                              child: Row(
                                children: <Widget>[
                                  Expanded(child:Container(
                                    child: const Text("Location",
                                        style: TextStyle(
                                            color: Color.fromRGBO(138, 138, 138, 1),
                                            fontFamily: 'RobotoRegular',
                                            fontSize: 10,
                                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1.5 /*PERCENT not supported*/
                                        )
                                    ),
                                  )
                                  ),
                                  const Text("Surendra Nagar, Gujarat",
                                      style: TextStyle(
                                          color: Color.fromRGBO(138, 138, 138, 1),
                                          fontFamily: 'RobotoRegular',
                                          fontSize: 10,
                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1.5 /*PERCENT not supported*/
                                      )
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 18.0),
                            child: Container(
                              child: Row(
                                children: <Widget>[
                                  Expanded(child:Container(
                                    child: const Text("Location",
                                        style: TextStyle(
                                            color: Color.fromRGBO(138, 138, 138, 1),
                                            fontFamily: 'RobotoRegular',
                                            fontSize: 10,
                                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1.5 /*PERCENT not supported*/
                                        )
                                    ),
                                  )
                                  ),
                                  const Text("Surendra Nagar, Gujarat",
                                      style: TextStyle(
                                          color: Color.fromRGBO(138, 138, 138, 1),
                                          fontFamily: 'RobotoRegular',
                                          fontSize: 10,
                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1.5 /*PERCENT not supported*/
                                      )
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 18.0),
                            child: Container(
                              child: Row(
                                children: <Widget>[
                                  Expanded(child:Container(
                                    child: const Text("Location",
                                        style: TextStyle(
                                            color: Color.fromRGBO(138, 138, 138, 1),
                                            fontFamily: 'RobotoRegular',
                                            fontSize: 10,
                                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1.5 /*PERCENT not supported*/
                                        )
                                    ),
                                  )
                                  ),
                                  const Text("Surendra Nagar, Gujarat",
                                      style: TextStyle(
                                          color: Color.fromRGBO(138, 138, 138, 1),
                                          fontFamily: 'RobotoRegular',
                                          fontSize: 10,
                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1.5 /*PERCENT not supported*/
                                      )
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 18.0),
                            child: Container(
                              child: Row(
                                children: <Widget>[
                                  Expanded(child:Container(
                                    child: const Text("Location",
                                        style: TextStyle(
                                            color: Color.fromRGBO(138, 138, 138, 1),
                                            fontFamily: 'RobotoRegular',
                                            fontSize: 10,
                                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1.5 /*PERCENT not supported*/
                                        )
                                    ),
                                  )
                                  ),
                                  const Text("Surendra Nagar, Gujarat",
                                      style: TextStyle(
                                          color: Color.fromRGBO(138, 138, 138, 1),
                                          fontFamily: 'RobotoRegular',
                                          fontSize: 10,
                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1.5 /*PERCENT not supported*/
                                      )
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 18.0),
                            child: Container(
                              child: Row(
                                children: <Widget>[
                                  Expanded(child:Container(
                                    child: const Text("Location",
                                        style: TextStyle(
                                            color: Color.fromRGBO(138, 138, 138, 1),
                                            fontFamily: 'RobotoRegular',
                                            fontSize: 10,
                                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1.5 /*PERCENT not supported*/
                                        )
                                    ),
                                  )
                                  ),
                                  const Text("Surendra Nagar, Gujarat",
                                      style: TextStyle(
                                          color: Color.fromRGBO(138, 138, 138, 1),
                                          fontFamily: 'RobotoRegular',
                                          fontSize: 10,
                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1.5 /*PERCENT not supported*/
                                      )
                                  ),

                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  // Name History details ********************************************************

                  Card(
                    elevation: 0,
                    margin: EdgeInsets.only(left: 0.0,right: 0.0,top: 2.0),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(14.0, 22.0, 14.0, 22.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          const Text("Name History",
                              style: TextStyle(
                                  color: Color.fromRGBO(138, 138, 138, 1),
                                  fontFamily: 'RobotoRegular',
                                  fontSize: 16,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                              )
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 18.0),
                            child: Container(
                              child: Row(
                                children: <Widget>[
                                  Expanded(child:Container(
                                    child: const Text("Name",
                                        style: TextStyle(
                                            color: Color.fromRGBO(138, 138, 138, 1),
                                            fontFamily: 'RobotoBold',
                                            fontSize: 10,
                                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1.5 /*PERCENT not supported*/
                                        )
                                    ),
                                  )
                                  ),
                                  const Text("Till Date",
                                      style: TextStyle(
                                          color: Color.fromRGBO(138, 138, 138, 1),
                                          fontFamily: 'RobotoBold',
                                          fontSize: 10,
                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1.5 /*PERCENT not supported*/
                                      )
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 18.0),
                            child: Container(
                              child: Row(
                                children: <Widget>[
                                  Expanded(child:Container(
                                    child: const Text("West Bokaro Limited",
                                        style: TextStyle(
                                            color: Color.fromRGBO(138, 138, 138, 1),
                                            fontFamily: 'RobotoRegular',
                                            fontSize: 10,
                                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1.5 /*PERCENT not supported*/
                                        )
                                    ),
                                  )
                                  ),
                                  const Text("27 Mar 1945",
                                      style: TextStyle(
                                          color: Color.fromRGBO(138, 138, 138, 1),
                                          fontFamily: 'RobotoRegular',
                                          fontSize: 10,
                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1.5 /*PERCENT not supported*/
                                      )
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 18.0),
                            child: Container(
                              child: Row(
                                children: <Widget>[
                                  Expanded(child:Container(
                                    child: const Text("The Tata Iron And Steel Company Limited",
                                        style: TextStyle(
                                            color: Color.fromRGBO(138, 138, 138, 1),
                                            fontFamily: 'RobotoRegular',
                                            fontSize: 10,
                                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1.5 /*PERCENT not supported*/
                                        )
                                    ),
                                  )
                                  ),
                                  const Text("27 Jul 2005",
                                      style: TextStyle(
                                          color: Color.fromRGBO(138, 138, 138, 1),
                                          fontFamily: 'RobotoRegular',
                                          fontSize: 10,
                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1.5 /*PERCENT not supported*/
                                      )
                                  ),

                                ],
                              ),
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