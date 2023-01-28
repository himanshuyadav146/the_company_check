import 'package:flutter/material.dart';
import 'package:the_company_check/screens/home/home.dart';

import '../../theme/app_theme.dart';

class HomeContainer extends StatefulWidget {
  const HomeContainer({Key? key}) : super(key: key);

  @override
  State<HomeContainer> createState() => _HomeContainerState();
}

class _HomeContainerState extends State<HomeContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 5,
        child: Scaffold(
          bottomNavigationBar: menu(),
          body: TabBarView(
            children: [
              Home(),
              Home(),
              Home(),
              Home(),
              // if(companyDetailsStore?.companyData!=null) ...[
              //   OverView(companyDetailsStore?.companyData),
              //   People(companyDetailsStore?.directorsList,companyDetailsStore?.companyData),
              //   Charges(companyDetailsStore?.companyData?.charges),
              //   // Financials(),
              //   Ratio(),
              //   Center(
              //     child: Text("Control"),
              //   ),
              // ] else ...[
              //   Text("No data found on overview"),
              //   Text("No data found on peoples"),
              //   Text("No data found on changes"),
              //   Text("No data found on financials"),
              //   Text("No data found on Control"),
              // ]
            ],
          ),
        ),
      ),
    );
  }

  Widget menu() {
    return Container(
      color: Colors.white,
      child: TabBar(
        isScrollable: true,
        labelColor: Color.fromRGBO(59, 89, 161, 1),
        unselectedLabelColor: Color.fromRGBO(59, 89, 161, 1),
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: EdgeInsets.all(5.0),
        indicatorColor: AppTheme.tabTextColor,
        labelPadding: EdgeInsets.only(left: 12.0,right: 12.0,top: 8.0,bottom: 0.0),
        tabs: [
          Tab(
            text: "Overview",
          ),
          Tab(
            text: "Peoples",
          ),
          Tab(
            text: "Charges",
          ),
          Tab(
            text: "Financials",
          ),

        ],
      ),
    );
  }
}
