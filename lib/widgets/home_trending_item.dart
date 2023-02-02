import 'package:flutter/material.dart';

import '../models/home_model.dart';
import '../routs/common_navigation.dart';
import '../routs/route_name.dart';
import '../theme/app_theme.dart';
import '../utils/AppSingleton.dart';
import '../utils/app_utils.dart';
import '../utils/string_extension.dart';


class HomeTrendingItems extends StatelessWidget {
   HomeTrendingItems(@required this.path,@required this.titleName,@required this.count,this.trendingCompany,{Key? key}) : super(key: key);

   String? path;
   String? titleName;
   String? count;
   TrendingCompany? trendingCompany;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130.0,
      child: InkWell(
        onTap: (){
          if(trendingCompany!=null){
            var appSingleton = AppSingleton();
            appSingleton.cinNo = trendingCompany!.cIN!;
            CommonNavigation().navigateScreens(context, RouteName.routNameCompanyDetailContainer);
          }
        },
        child: Card(
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 45.0,
                    width: 45.0,
                    child:  AppUtils.getImage(path!,""),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(titleName!.toTitleCase(),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          softWrap: false,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppTheme.colorGray,
                            fontFamily: 'RobotoRegular',
                            fontSize: 14,
                            letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.5,
                            /*PERCENT not supported*/
                          )),
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(top: 4.0),
                  //   child: Align(
                  //     alignment: Alignment.center  ,
                  //     child: RichText(text: TextSpan(
                  //       children: [
                  //         WidgetSpan(child: Icon(Icons.location_on_outlined,size: 15,color: AppTheme.colorGray6,)),
                  //         TextSpan(text: count!,
                  //         style: TextStyle(
                  //           color: AppTheme.colorGray,
                  //           fontFamily: 'RobotoBold',
                  //           fontSize: 12,
                  //           letterSpacing:
                  //           0 /*percentages not used in flutter. defaulting to zero*/,
                  //           fontWeight: FontWeight.normal,
                  //           height: 1.5,
                  //         )
                  //         )
                  //       ]
                  //     )),
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.location_on_outlined,size: 20,color: AppTheme.colorGray6,),
                       // WidgetSpan(child: Icon(Icons.location_on_outlined,size: 15,color: AppTheme.colorGray6,)),
                        Expanded(
                          child: Text(count!,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              softWrap: false,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: AppTheme.colorGray,
                                  fontFamily: 'RobotoBold',
                                  fontSize: 12,
                                  letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                              )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
        ),
      ),
    );
  }
}
