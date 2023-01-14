import 'package:flutter/material.dart';

import '../models/company_details_model.dart';
import '../theme/app_theme.dart';

class DirecorsSignatoryWidget extends StatefulWidget {
    DirecorsSignatoryWidget(this.title,this.list,{Key? key}) : super(key: key);
   String title;
   List<TDirector>? list;

   @override
   State<DirecorsSignatoryWidget> createState() => _DirecorsSignatoryWidgetState();
 }

 class _DirecorsSignatoryWidgetState extends State<DirecorsSignatoryWidget> {
   @override
   Widget build(BuildContext context) {
     return Column(
       children: <Widget>[
         Align(
           alignment: Alignment.centerLeft,
           child: Text("${widget.title}",
             style: TextStyle(
                 color: AppTheme.lightGray138_1,
                 fontFamily: 'RobotoMedium',
                 fontSize: 18,
                 letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                 fontWeight: FontWeight.normal,
                 height: 1.5 /*PERCENT not supported*/
             ),
           ),
         ),
         Padding(
           padding: const EdgeInsets.only(left: 0.0,top: 15.0),
           child: GridView.count(crossAxisCount: 2,
             children: List.generate(10, (index) {
               return Center(
                 child: Text('${widget.list?[index].directorName}'),
               );
             }),
           ),
         ),
       ],
     );
   }
 }
