import 'package:flutter/material.dart';
import 'package:the_company_check/routs/route_name.dart';
import 'package:the_company_check/screens/charges/charges.dart';
import 'package:the_company_check/screens/charges/charges_details.dart';
import 'package:the_company_check/screens/company_details/company_details_container.dart';
import 'package:the_company_check/screens/company_details/financials.dart';
import 'package:the_company_check/screens/company_details/overview.dart';
import 'package:the_company_check/screens/company_search/company_search.dart';
import 'package:the_company_check/screens/home/home.dart';
import 'package:the_company_check/screens/home/home_container.dart';
import 'package:the_company_check/theme/app_theme.dart';
import 'package:the_company_check/utils/AppSingleton.dart';

import 'models/company_details_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    AppSingleton appSingleton = AppSingleton();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      initialRoute: '/',
      routes: {
        '/':(ctx) => const HomeContainer(),
        RouteName.routNameFinancials:(context) => const Financials(),
        RouteName.routNameCompanySearch:(context) => const CompanySearchScreen(),
        RouteName.routNameCompanyDetailContainer:(context) => const CompanyDetailsContainer(),
        RouteName.routNameChargesDetails:(context) => ChargesDetails(appSingleton.charg)
      },
      // onGenerateRoute: (settings){
      // if (settings.name == RouteName.routNameOverview) {
      //   final args = settings.arguments as RouteName;
      //   return MaterialPageRoute(
      //       builder: (ctx){
      //        return CompanyDetailsContainer(args.toString());
      //       }
      //   );
      // }
      // },
    );
  }
}




