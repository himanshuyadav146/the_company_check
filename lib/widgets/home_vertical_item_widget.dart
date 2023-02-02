import 'package:flutter/material.dart';

import '../models/home_model.dart';
import '../routs/common_navigation.dart';
import '../routs/route_name.dart';
import '../theme/app_theme.dart';
import '../utils/AppSingleton.dart';
import '../utils/app_utils.dart';

class HomeVerticalItemWidget extends StatelessWidget {
   HomeVerticalItemWidget(@required this.path,@required this.titleName,@required this.count,this.interestedCompany,{Key? key}) : super(key: key);

  String? path;
  String? titleName;
  String? count;
  InterestedCompany? interestedCompany;

   @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        var appSingleton = AppSingleton();
        appSingleton.cinNo = interestedCompany!.cIN!;
        CommonNavigation().navigateScreens(context, RouteName.routNameCompanyDetailContainer);
      },
      child: Container(
        child: Card(
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 60.0,
                    width: 55.0,
                    child:  AppUtils.getImage(path!,""),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                      padding: EdgeInsets.only(left: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0,left: 8,right: 8),
                          child: Text(titleName!,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: AppTheme.colorGray,
                                  fontFamily: 'RobotoRegular',
                                  fontSize: 14,
                                  letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                              )),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                                height: 30,
                                width: 25,
                                child: Image.asset('assets/images/location.png')
                            ),
                            Text(count!,
                                style: TextStyle(
                                    color: AppTheme.colorGray,
                                    fontFamily: 'RobotoBold',
                                    fontSize: 12,
                                    letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1.5 /*PERCENT not supported*/
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),

          )
        ),
      ),
    );
  }
}
