import 'package:flutter/cupertino.dart';

class CommonNavigation{
  void navigateScreens(BuildContext ctx,String routeName){
   Navigator.of(ctx).pushNamed(routeName);
   //  Navigator.pushNamed(ctx, routeName,arguments: '/');
  }
}