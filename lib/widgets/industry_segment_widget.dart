import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_company_check/models/company_details_model.dart';

import '../theme/app_theme.dart';

class IndustrySegmentWidget extends StatefulWidget {
   IndustrySegmentWidget(this.title, this.list,{Key? key}) : super(key: key);
  String title;
   List<IndustrySegment>? list;
   // List<IndustrySegment> list = set.


  @override
  State<IndustrySegmentWidget> createState() => _IndustrySegmentWidgetState();
}

class _IndustrySegmentWidgetState extends State<IndustrySegmentWidget> {
  @override
  Widget build(BuildContext context) {
    return  Card(
      color: AppTheme.colorPink1,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0,top: 20.0,bottom: 20.0),
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Text("${widget.title}",
                style: TextStyle(
                    color: AppTheme.lightGray138_1,
                    fontFamily: 'RobotoMedium',
                    fontSize: 18,
                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.5 /*PERCENT not supported*/
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0.0,top: 15.0),
              child: SizedBox(
                height: 40,
                child: ListView.builder(
                    itemCount:widget.list?.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      return Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 5,bottom: 5),
                            child: Text("${widget.list?[index]?.industry}",
                              style: const TextStyle(
                                color: AppTheme.colorGray4,
                                fontFamily: 'RobotoRegular',
                                fontSize: 14,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                                height: 1.5,
                              ),
                            ),
                          ),
                        )
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
