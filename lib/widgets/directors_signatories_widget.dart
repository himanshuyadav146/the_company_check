import 'package:flutter/material.dart';

import '../models/company_details_model.dart';
import '../theme/app_theme.dart';
import '../utils/app_utils.dart';

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
         Padding(
           padding: const EdgeInsets.only(left: 12.0,top: 20.0),
           child: Align(
             alignment: Alignment.centerLeft,
             child: Text("${widget.title}",
               style: TextStyle(
                   color: AppTheme.colorGray4,
                   fontFamily: 'RobotoMedium',
                   fontSize: 18,
                   letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                   fontWeight: FontWeight.normal,
                   height: 1.5 /*PERCENT not supported*/
               ),
             ),
           ),
         ),
         GridView.count(crossAxisCount: 2,
           padding: EdgeInsets.all(0.0),
           shrinkWrap: false,
           children: List.generate(4, (index) {
             return Text('${widget.list?[index].directorName}');
             // return Card(
             //   elevation: 10,
             //   child: Row(
             //     crossAxisAlignment: CrossAxisAlignment.start,
             //     children: <Widget>[
             //        SizedBox(
             //          width: 70.0,
             //          height: 70.0,
             //          child: Expanded(
             //              child: AppUtils.getImage("https://images.thecompanycheck.com/directorimage/${widget.list?[index].profilePicUrl}","${widget.list?[index].directorName}"),
             //          ),
             //        ),
             //       Expanded(
             //           child: Column(
             //             crossAxisAlignment: CrossAxisAlignment.start,
             //             children: <Widget>[
             //               Text("${widget.list?[index].directorName}",
             //                 textAlign: TextAlign.left, style: TextStyle(
             //                     color: Color.fromRGBO(19, 170, 207, 1),
             //                     fontFamily: 'RobotoRegular',
             //                     fontSize: 16,
             //                     letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
             //                     fontWeight: FontWeight.normal,
             //                     height: 1.5 /*PERCENT not supported*/
             //                 ),),
             //               Text("${widget.list?[index].designation}",
             //                 textAlign: TextAlign.left, style: TextStyle(
             //                     color: Color.fromRGBO(138, 138, 138, 1),
             //                     fontFamily: 'RobotoRegular',
             //                     fontSize: 14,
             //                     letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
             //                     fontWeight: FontWeight.normal,
             //                     height: 1.5 /*PERCENT not supported*/
             //                 ),)
             //             ],
             //           )
             //       ),
             //
             //     ],
             //   ),
             // );
           }),
         ),
       ],
     );
   }
 }
