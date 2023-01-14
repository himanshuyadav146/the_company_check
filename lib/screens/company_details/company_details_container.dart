import 'package:flutter/material.dart';
import 'package:the_company_check/screens/charges/charges.dart';
import 'package:the_company_check/screens/charges/mylist.dart';
import 'package:the_company_check/screens/company_details/financials.dart';
import 'package:the_company_check/screens/company_details/overview.dart';
import 'package:the_company_check/screens/company_details/store/company_details_store.dart';
import 'package:the_company_check/screens/loader/loading_page.dart';
import 'package:the_company_check/screens/people/people.dart';
import 'package:the_company_check/utils/AppSingleton.dart';
import '../../theme/app_theme.dart';


class CompanyDetailsContainer extends StatefulWidget {
 const CompanyDetailsContainer({Key? key}) : super(key: key);

  @override
  State<CompanyDetailsContainer> createState() => _CompanyDetailsContainerState();
}

class _CompanyDetailsContainerState extends State<CompanyDetailsContainer> {
  CompanyDetailsStore companyDetailsStore = CompanyDetailsStore();

  @override
  void initState() {
    _getData();
    super.initState();

  }

  void _getData() async {
    var appSingleton = AppSingleton();
    await companyDetailsStore.getCompanyDetails(appSingleton.cinNo);
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return companyDetailsStore.isLoading ? const LoadingPage() : Scaffold(
      body: DefaultTabController(
        length: 5,
            child: Scaffold(
              bottomNavigationBar: menu(),
              body: TabBarView(
                children: [
                  if(companyDetailsStore?.companyData!=null) ...[
                    OverView(companyDetailsStore?.companyData),
                    People(companyDetailsStore?.directorsList,companyDetailsStore?.companyData),
                    Charges(companyDetailsStore?.companyData?.charges),
                    Financials(),
                    Center(
                      child: Text("Control"),
                    ),
                  ] else ...[
                    Text("No data found on overview"),
                    Text("No data found on peoples"),
                    Text("No data found on changes"),
                    Text("No data found on financials"),
                    Text("No data found on Control"),
                  ]
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
          Tab(
            text: "Control",
          ),
        ],
      ),
    );
  }
}
