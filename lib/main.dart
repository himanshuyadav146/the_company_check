import 'package:flutter/material.dart';
import 'package:the_company_check/routs/route_name.dart';
import 'package:the_company_check/screens/company_details/company_details_container.dart';
import 'package:the_company_check/screens/company_details/financials.dart';
import 'package:the_company_check/screens/company_details/overview.dart';
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
        '/':(ctx) => CompanyDetailsContainer(),
        RouteName.routNameFinancials:(context) => const Financials()
      },
    );
  }
}




