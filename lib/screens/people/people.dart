import 'package:flutter/material.dart';
import 'package:the_company_check/models/company_details_model.dart';

import '../../widgets/custom_appbar.dart';
import '../../widgets/user_card.dart';

class People extends StatefulWidget {
 People(@required this.directorsList, @required this.companyData);

  final List<TDirector>? directorsList;
  final Datum? companyData;


  @override
  State<People> createState() => _PeopleState();
}

class _PeopleState extends State<People> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          onChanged: (value) {
            debugPrint(value);
          }
      ),
      body: ListView.builder(
        itemCount: widget.directorsList?.length,
          itemBuilder: (ctx,i){
          return ListTile(
            contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
            title: UserCard(widget.directorsList?[i],widget.directorsList,widget.companyData),
          );
          }
      )
    );
  }
}
