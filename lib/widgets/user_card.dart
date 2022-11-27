import 'package:flutter/material.dart';
import 'package:the_company_check/models/company_details_model.dart';

class UserCard extends StatefulWidget {
  UserCard(this.currentDirector);

  TDirector? currentDirector;

  @override
  State<UserCard> createState() => _UserCardState();
}

class _UserCardState extends State<UserCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 0,top: 12),
      elevation: 0,
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Image.asset('assets/images/googleimg.png'),
            title: Column(
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

          )
        ],
      ),
    );
  }
}
