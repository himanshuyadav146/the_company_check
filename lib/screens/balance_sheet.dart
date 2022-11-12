import 'package:flutter/material.dart';

class BalanceSheet extends StatefulWidget {
  const BalanceSheet({Key? key}) : super(key: key);

  @override
  State<BalanceSheet> createState() => _BalanceSheetState();
}

class _BalanceSheetState extends State<BalanceSheet> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Balance Sheet"),
    );
  }
}
