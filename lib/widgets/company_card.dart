import 'package:flutter/material.dart';

class CompanyCard extends StatefulWidget {
  const CompanyCard({Key? key}) : super(key: key);

  @override
  State<CompanyCard> createState() => _CompanyCardState();
}

class _CompanyCardState extends State<CompanyCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 0,top: 12),
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Text("Compay Name!!"),
      ),
    );
  }
}
