import 'package:flutter/material.dart';
import 'package:the_company_check/theme/app_theme.dart';

class TextWidgetWithBg extends StatelessWidget {
   TextWidgetWithBg(this.txt,this.isPositive,{Key? key}) : super(key: key);
  String? txt;
  bool isPositive = false;

  @override
  Widget build(BuildContext context) {

    getColor(){
      return isPositive ? AppTheme.lightGreen : AppTheme.darkPink;
    }

    return ClipRRect(
      borderRadius: BorderRadius.circular(5.0),
      child: Container(
        width: 110.0,
        color: getColor(),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(txt!),
          ),
        ),
      ),
    );
  }
}
