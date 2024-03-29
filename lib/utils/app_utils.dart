
import 'package:flutter/material.dart';
import 'package:flutter_initicon/flutter_initicon.dart';

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

  // static getImage(String url,String? name) {
  //   if(url.isNotEmpty){
  //     var resURL = getUpdatedURL(url);
  //     if(resURL !=null){
  //       return Image.network(resURL);
  //     }else{
  //       return Image.asset('assets/images/googleimg.png');
  //     }
  //   }else{
  //     return Image.asset('assets/images/googleimg.png');
  //   }
  // }

  static getImage(String url,String? name) {
    if(url.isNotEmpty){
      var resURL = getUpdatedURL(url);
      if(resURL !=null){
        return Image.network(resURL);
      }else if(name!="" || name!=null){
        return Center(
          child: Initicon(
              text: "$name",
              elevation: 4,
            backgroundColor: AppTheme.tabTextColor,
            size: 60,
          ),
        );
      }
    }else if(name!="" || name!=null){
      return Center(
        child: Initicon(
            text: "$name   ",
            elevation: 4,
          backgroundColor: AppTheme.tabTextColor,
          size: 60,
        ),
      );
    }
  }
  
  static getSocialMeadiaIMG(String url){
    if(url.contains("linkedin")){
      return Image.asset('assets/images/social_linked.png');
    }else if(url.contains("twitter")){
      return Image.asset('assets/images/social_twitter.png');
    }else if(url.contains("facebook")){
      return Image.asset('assets/images/social_fb.png');
    }else if(url.contains("instagram")){
      return Image.asset('assets/images/social_insta.png');
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

  static Color getColorCode(String? txt){
    switch(txt){
      case "open":
        return AppTheme.colorActive;
      case "Closed":
        return AppTheme.colorClose;
    }
    return AppTheme.colorActive;
  }

  static Color getColorCodeForPercentage(String txt){
    var isPositive = txt.contains("-") ? false : true;
    if(isPositive){
      return AppTheme.colorActive;
    }else{
      return AppTheme.colorClose;
    }
  }

  static String getFormatedAmount(double? numberToFormat,int decimalDigits){
    var _formattedNumber = NumberFormat.compactCurrency(
      decimalDigits: decimalDigits,
      symbol: '\u{20B9} ', // if you want to add currency symbol then pass that in this else leave it empty.
    ).format(numberToFormat);
    print('Formatted Number is: $_formattedNumber');
    return _formattedNumber;
  }

  static String getIndianFormatedAmount(double? numberToFormat){
    return NumberFormat.compactCurrency(locale: 'en_IN').format(numberToFormat);
  }

  static String getPercentageOfyears(double currentYear,double previousYear){
    if(previousYear==0){
      return "0";
    }
    if(currentYear == 0){
      return "-100";
    }
    var res = (((currentYear - previousYear) * 100) / previousYear);
    return res.toStringAsFixed(2);
  }

  static Future<void> launchInBrowser(String? url) async {
    // if(await canLaunch(url)){
    //   await launch(url);
    // }
  }
}