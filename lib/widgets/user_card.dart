import 'package:flutter/material.dart';
import 'package:the_company_check/models/company_details_model.dart';
import 'package:the_company_check/theme/app_theme.dart';
import 'package:the_company_check/utils/app_utils.dart';

class UserCard extends StatefulWidget {
  UserCard(this.currentDirector, this.directorsList);

  TDirector? currentDirector;
  List<TDirector>? directorsList;

  @override
  State<UserCard> createState() => _UserCardState();
}

class _UserCardState extends State<UserCard> {
  @override
  Widget build(BuildContext context) {
    return widget.currentDirector?.title !=null
        ? Container(
      color: AppTheme.colorGray1,
          padding: const EdgeInsets.only(top: 18.0,bottom: 18.0,left: 12.0),
          child: Text("${widget.currentDirector?.title} "
          "(${widget.directorsList?.length})",
    style: TextStyle(
      fontFamily: 'RobotoMedium',
      fontSize: 18.0,
      color: AppTheme.colorDarkGray,
    ),
    ),
        ) : Card(
      margin: EdgeInsets.only(left: 8,top: 12),
      elevation: 0,
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
                child: AppUtils.getImage("https://images.thecompanycheck.com/directorimage/${widget.currentDirector?.profilePicUrl}"),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("${widget.currentDirector?.directorName}",
                              textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(19, 170, 207, 1),
                                fontFamily: 'RobotoRegular',
                                fontSize: 16,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.5 /*PERCENT not supported*/
                            ),),
                            Text("${widget.currentDirector?.designation}",
                              textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(138, 138, 138, 1),
                                fontFamily: 'RobotoRegular',
                                fontSize: 14,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.5 /*PERCENT not supported*/
                            ),)
                          ],

                        ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
