
import 'package:flutter/material.dart';
import 'package:flutter_initicon/flutter_initicon.dart';

import 'dart:math' as math;
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
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
        return ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.network(resURL)
        );
      }else if(name!="" || name!=null){
        return Center(
          child: Initicon(
              text: "$name",
              elevation: 0,
            backgroundColor: AppTheme.colorGray7,
            size: 80,
            style: TextStyle(
              color:AppTheme.lightGray138_1
            ),
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
        case "webp":
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
      name: "INR",
      locale: 'en_IN',
      decimalDigits: decimalDigits,
      symbol: '\u{20B9} ', // if you want to add currency symbol then pass that in this else leave it empty.
    ).format(numberToFormat);
    print('Formatted Number is: $_formattedNumber');
    return _formattedNumber;
  }

  static String getNumberFormate(int? numberToFormat,int decimalDigits){
    if (numberToFormat! > 999 && numberToFormat < 99999) {
      return "$numberToFormat";
    } else if (numberToFormat > 99999 && numberToFormat < 999999) {
      return "${(numberToFormat / 1000).toStringAsFixed(0)} L";
    }else if(numberToFormat > 999999 && numberToFormat < 99999999){
      return numberToFormat > 1000000 ? "${(numberToFormat / 1000000).toStringAsFixed(1)} L+" : "${(numberToFormat / 1000000).toStringAsFixed(1)} L";
    }
    else if (numberToFormat > 99999999 && numberToFormat < 999999999) {
      return numberToFormat > 1000000 ? "${(numberToFormat / 1000000).toStringAsFixed(decimalDigits)} Cr+" : "${(numberToFormat / 1000000).toStringAsFixed(decimalDigits)} Cr";
    } else if (numberToFormat > 999999999) {
      return "${(numberToFormat / 1000000000).toStringAsFixed(decimalDigits)} B";
    } else {
      return numberToFormat.toString();
    }
  }

  static String getFormatedAmountInCR(double? numberToFormat,int decimalDigits){
    print('Recived Number is: $numberToFormat');
    var _formattedNumber = NumberFormat.compactCurrency(
      name: "INR",
      locale: 'en_IN',
      decimalDigits: decimalDigits,
      symbol: '\u{20B9}', // if you want to add currency symbol then pass that in this else leave it empty.
    ).format(numberToFormat);
    print('Formatted Number is: $_formattedNumber');
    if(_formattedNumber.isNotEmpty){
      if(_formattedNumber.contains("Cr")){
        _formattedNumber = _formattedNumber.replaceAll("Cr", " Cr");
      }else if(_formattedNumber.contains("L")){
        _formattedNumber = _formattedNumber.replaceAll("L", " L");
      }
    }
    return _formattedNumber;
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

  static String getDiffOfyears(double currentYear,double previousYear){
    if(previousYear==0){
      return "0";
    }
    if(currentYear == 0){
      return "-100";
    }
    var res = (currentYear - previousYear);
    return res.toStringAsFixed(2);
  }

  static void redirectOnWeb(String? url){
    launchInBrowser("https://www.$url");
  }

  static Future<void> launchInBrowser(String? url) async {
    if (await canLaunchUrl(Uri.parse(url!))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

  static isEmpatyString(String str){
    return str.isNotEmpty;
  }

  static numDifferentiation(value) {
    var val = value.abs();
    if (val >= 10000000) {
      // val = (val / 10000000).toFixed(2) + ' Cr';
      val = (val / 10000000) + ' Cr';
    } else if (val >= 100000) {
      // val = (val / 100000).toFixed(2) + ' Lac';
      val = (val / 100000) + ' Lac';
    }
    return val;
  }
}