import 'package:flutter/material.dart';
import 'package:the_company_check/models/company_details_model.dart';

import '../../widgets/user_card.dart';

class People extends StatefulWidget {

  People(@required this.companyData);

  final Datum? companyData;

  @override
  State<People> createState() => _PeopleState();
}

class _PeopleState extends State<People> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("People"),
      ),
      body: ListView.builder(
        itemCount: widget.companyData?.currentDirectors?.length,
          itemBuilder: (ctx,i){
          return ListTile(
            title: UserCard(widget.companyData?.currentDirectors![i]),
          );
          }
      )
    );
  }
}
