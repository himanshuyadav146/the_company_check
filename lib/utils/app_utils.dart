
import 'package:flutter/material.dart';

import 'dart:math' as math;
import 'package:intl/intl.dart';

import '../theme/app_theme.dart';

class AppUtils {
  factory AppUtils() {
    return _singleton;
  }

  AppUtils._internal();
  static final AppUtils _singleton = AppUtils._internal();

  double degreeToRadian(double degree) {
    return degree * math.pi / 180;
  }

  double radianToDegree(double radian) {
    return radian * 180 / math.pi;
  }

  static getImage(String url) {
    if(url.isNotEmpty){
      var resURL = getUpdatedURL(url);
      if(resURL !=null){
        return Image.network(resURL);
      }else{
        return Image.asset('assets/images/googleimg.png');
      }
    }else{
      return Image.asset('assets/images/googleimg.png');
    }
  }

  static getUpdatedURL(String url){
    if(url.isNotEmpty){
      var imgExtensions = url.split('.').last;
      switch(imgExtensions){
        case "png":
        case "jpg":
        case "bmp":
        case "jpeg":
        case "tiff":
        case "0":{
            return url.replaceAll(imgExtensions, "webp");
          }
      }
    }else{
      return Image.asset('assets/images/googleimg.png');
    }
  }

  static getDDMMYY(String? inputDate){
    try{
      var date1 = DateFormat("yyyy-MM-dd").parse(inputDate!);
      var outPutFormat = DateFormat('d MMM yyyy');
      return outPutFormat.format(date1);
    }catch(e){
      return "";
    }
  }

  static Color getColorCode(String txt){
    switch(txt){
      case "open":
        return AppTheme.colorActive;
      case "Closed":
        return AppTheme.colorClose;
    }
    return AppTheme.colorActive;
  }
}