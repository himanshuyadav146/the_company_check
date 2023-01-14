import 'package:flutter/material.dart';
import 'package:the_company_check/theme/app_theme.dart';

import '../models/search_list_model.dart';
import '../utils/app_utils.dart';

class CompanyCard extends StatefulWidget {
  CompanyCard(this.resData);
  DatuSerch resData;

  @override
  State<CompanyCard> createState() => _CompanyCardState();
}

class _CompanyCardState extends State<CompanyCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 0,top: 12),
      elevation: 0,
      color: AppTheme.colorLight,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: SizedBox(
                width: 70.0,
                height: 70.0,
                child: AppUtils.getImage("https://images.thecompanycheck.com/companylogo/${widget.resData?.legalName}",""),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("${widget.resData?.legalName}",
                      textAlign: TextAlign.left, style: TextStyle(
                          color: AppTheme.colorGray,
                          fontFamily: 'RobotoBold',
                          fontSize: 14,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.5 /*PERCENT not supported*/
                      ),),
                    Text("${widget.resData?.currentCin}",
                      textAlign: TextAlign.left, style: TextStyle(
                          color: AppTheme.colorNavylue,
                          fontFamily: 'RobotoRegular',
                          fontSize: 10,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.5 /*PERCENT not supported*/
                      ),)
                  ],

                ),
              ),
            ),
            // const Divider(
            //   color: AppTheme.colorClose, //color of divider
            //   height: 10, //height spacing of divider
            //   thickness: 10, //thickness of divier line
            //   indent: 25, //spacing at the start of divider
            //   endIndent: 25, //spacing at the end of divider
            // ),
          ],
        ),
      ),
    );
  }
}
