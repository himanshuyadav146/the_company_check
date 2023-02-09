import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_company_check/models/company_details_model.dart';

import '../theme/app_theme.dart';

class IndustrySegmentWidget extends StatelessWidget {
   IndustrySegmentWidget(this.title, this.list,{Key? key}) : super(key: key);
  String title;
   List<String?> list;
  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 0.0,
      color: AppTheme.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 0.0,top: 0.0,bottom: 20.0),
        child: Column(
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                color: AppTheme.colorGray9,
                borderRadius: BorderRadius.all(
                  Radius.circular(0),
                ),
              ),
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("${title}",
                  style: TextStyle(
                      color: AppTheme.colorGray4,
                      fontFamily: 'RobotoRegular ',
                      fontSize: 14,
                      letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.5 /*PERCENT not supported*/
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0.0,top: 17.0),
              child: SizedBox(
                height: 50,
                child: ListView.builder(
                    itemCount:list?.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      return Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 5,bottom: 5),
                            child: Container(
                              padding: EdgeInsets.only(
                                bottom: 5, // Space between underline and text
                              ),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(
                                    color: AppTheme.darkBlue,
                                    width: 1.0, // Underline thickness
                                  ))
                              ),
                              child: Text("${list?[index]}",
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
