import 'package:flutter/material.dart';

import '../models/home_model.dart';
import '../routs/common_navigation.dart';
import '../routs/route_name.dart';
import '../theme/app_theme.dart';
import '../utils/AppSingleton.dart';
import '../utils/app_utils.dart';

class HomeCompanyInfoCard extends StatelessWidget {
  HomeCompanyInfoCard(@required this.path,@required this.titleName,@required this.count,this.trendingCompany,{Key? key}) : super(key: key);
  String? path;
  String? titleName;
  String? count;
  TrendingCompany? trendingCompany;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: (){
          if(trendingCompany!=null){
            var appSingleton = AppSingleton();
            appSingleton.cinNo = trendingCompany!.cIN!;
            CommonNavigation().navigateScreens(context, RouteName.routNameCompanyDetailContainer);
          }
        },
        child: Container(
          height: 140,
          child: Card(
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 45.0,
                    width: 45.0,
                    child: path!.contains("assets")? Image.asset(path!) : AppUtils.getImage(path!,""),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,left: 8,right: 8),
                    child: Text(titleName!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: AppTheme.colorGray,
                            fontFamily: 'RobotoRegular',
                            fontSize: 12,
                            letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.5 /*PERCENT not supported*/
                        )),
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
            ),
          ),
        ),
      ),
    );
  }
}
