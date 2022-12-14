import 'package:flutter/material.dart';
import 'package:the_company_check/screens/charges/charges.dart';
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
    return companyDetailsStore.isLoading ? LoadingPage() : Scaffold(
      body: DefaultTabController(
        length: 4,
            child: Scaffold(
              bottomNavigationBar: menu(),
              body: TabBarView(
                children: [
                  if(companyDetailsStore?.companyData!=null) ...[
                    OverView(companyDetailsStore?.companyData),
                    People(companyDetailsStore?.companyData),
                    Charges(companyDetailsStore?.companyData?.charges),
                    Financials()
                  ] else ...[
                    Text("No data found on overview"),
                    Text("No data found on peoples"),
                    Text("No data found on changes"),
                    Text("No data found on financials"),
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
        labelColor: Color.fromRGBO(59, 89, 161, 1),
        unselectedLabelColor: Color.fromRGBO(59, 89, 161, 1),
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: EdgeInsets.all(5.0),
        indicatorColor: AppTheme.tabTextColor,
        labelPadding: EdgeInsets.all(0),
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
