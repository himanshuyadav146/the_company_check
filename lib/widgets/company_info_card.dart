import 'package:flutter/material.dart';

import '../models/company_details_model.dart';
import '../theme/app_theme.dart';
import '../utils/app_utils.dart';

class CompanyInfoCard extends StatelessWidget {
  const CompanyInfoCard(@required this.companyData,{Key? key}) : super(key: key);
  final Datum? companyData;

  @override
  Widget build(BuildContext context) {
    return  Card(
      margin: EdgeInsets.only(left: 8,top: 12,right: 8),
      elevation: 0,
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 1,
                child: SizedBox(
                  width: 92,
                  height: 97,
                  child: AppUtils.getImage(
                      "https://images.thecompanycheck.com/companylogo/${companyData?.logo}",
                      ""),
                )
            ),
            Expanded(
              flex: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("${companyData?.legalName}",
                        textAlign: TextAlign.left,
                      style: const TextStyle(
                        color: AppTheme.colorGray4,
                        fontFamily: 'RobotoBold',
                        fontSize: 18,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                        height: 1.5,
                      ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Visibility(
                          visible: companyData!.address!.location !=
                              null
                              ? true
                              : false,
                          child: Stack(
                            children: <Widget>[
                              SizedBox(
                                  height: 20,
                                  width: 12,
                                  child: Image.asset('assets/images/location.png')
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text("${companyData?.address?.location}",
                                  textAlign: TextAlign.left, style: TextStyle(
                                      color: AppTheme.colorGray,
                                      fontFamily: 'RobotoMedium',
                                      fontSize: 12,
                                      letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height:
                                      1.5 /*PERCENT not supported*/
                                  ),),
                              ),
                            ],

                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: Visibility(
                          visible: companyData!.website !=
                              null
                              ? true
                              : false,
                          child: Stack(
                            children: <Widget>[
                              SizedBox(
                                  height: 20,
                                  width: 12,
                                  child: Image.asset('assets/images/website_img.png')
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: InkWell(
                                  onTap: (){
                                    AppUtils.redirectOnWeb(companyData?.website);
                                  },
                                  child: Text("${companyData?.website}",
                                    textAlign: TextAlign.left, style: TextStyle(
                                        color: AppTheme.colorGray,
                                        fontFamily: 'RobotoMedium',
                                        fontSize: 12,
                                        letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height:
                                        1.5 /*PERCENT not supported*/
                                    ),),
                                ),
                              )
                            ],

                          ),
                        ),
                      )
                    ],
                  ),

                )
            )
          ],
        ),
      ),

    );
  }
}
