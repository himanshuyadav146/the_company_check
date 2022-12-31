import 'package:flutter/cupertino.dart';

import '../models/company_details_model.dart';

class CommonNavigation{
  void navigateScreens(BuildContext ctx,String routeName){
   Navigator.of(ctx).pushNamed(routeName);
  }

  // void navigateScreens(BuildContext ctx,String routeName,Charge object){
  //   Navigator.of(ctx).pushNamed(routeName,arguments: object);
  // }
}