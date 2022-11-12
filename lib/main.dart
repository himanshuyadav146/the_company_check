import 'package:flutter/material.dart';
import 'package:the_company_check/routs/route_name.dart';
import 'package:the_company_check/screens/financials.dart';
import 'package:the_company_check/screens/overview.dart';
import 'package:the_company_check/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      initialRoute: '/',
      routes: {
        '/':(ctx) => OverView(),
        RouteName.routNameFinancials:(context) => const Financials()
      },
    );
  }
}




