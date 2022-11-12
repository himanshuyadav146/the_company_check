import 'package:flutter/material.dart';

class CompanyRatio extends StatefulWidget {
  const CompanyRatio({Key? key}) : super(key: key);

  @override
  State<CompanyRatio> createState() => _CompanyRatioState();
}

class _CompanyRatioState extends State<CompanyRatio> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Ratio"),
    );
  }
}
