import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_company_check/models/company_details_model.dart';

import '../theme/app_theme.dart';

class SocialMeadiaWidget extends StatefulWidget {
   SocialMeadiaWidget(this.title, {Key? key}) : super(key: key);
  String title;
   // List<IndustrySegment>? list;


  @override
  State<SocialMeadiaWidget> createState() => _SocialMeadiaWidgetState();
}

class _SocialMeadiaWidgetState extends State<SocialMeadiaWidget> {
  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0,top: 20.0,bottom: 20.0),
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Text("${widget.title}",
                style: TextStyle(
                    color: AppTheme.colorGray4,
                    fontFamily: 'RobotoRegular',
                    fontSize: 18,
                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.5 /*PERCENT not supported*/
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 40,
                child: ListView.builder(
                    itemCount:5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      return Image.asset(
                        'assets/images/googleimg.png',
                        width: 50,
                      );
                    }
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}
