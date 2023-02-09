import 'package:flutter/material.dart';
import 'package:the_company_check/screens/home/home.dart';
import 'package:the_company_check/screens/home/store/home_store.dart';
import 'package:the_company_check/utils/AppSingleton.dart';

import '../../theme/app_theme.dart';
import '../loader/loading_page.dart';

class HomeContainer extends StatefulWidget {
  const HomeContainer({Key? key}) : super(key: key);

  @override
  State<HomeContainer> createState() => _HomeContainerState();
}

class _HomeContainerState extends State<HomeContainer> {
  HomeStore homeStore = HomeStore();

  @override
  void initState() {
    _getData();
    super.initState();

  }

  void _getData() async {
    AppSingleton appSingleton = AppSingleton();
    await homeStore.getHomePageDetails();
    appSingleton.response = homeStore.response;
    setState(() {
    });
  }
  @override
  Widget build(BuildContext context) {
    return homeStore.isLoading ? const LoadingPage() : Scaffold(
      body: DefaultTabController(
        length: 4,
        child: Scaffold(
          bottomNavigationBar: menu(),
          body: TabBarView(
            children: [
              if(homeStore.response!=null)...[
                Home(homeStore.response),
                Container(child: Text("Orders"),),
                Container(child: Text("Watch List"),),
                Container(child: Text("Settings"),),
              ] else ...[
                Text("No data found on Orders"),
                  Text("No data found on Watch List"),
                  Text("No data found on Settings"),
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
        isScrollable: false,
        labelColor: Color.fromRGBO(59, 89, 161, 1),
        unselectedLabelColor: AppTheme.colorGray10,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorColor: AppTheme.tabTextColor,
        labelPadding: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        indicatorPadding: EdgeInsets.zero,
        tabs: [
          Tab(
            icon: SizedBox(
                height: 24,
                width: 24,
                child: Image.asset(
                    'assets/images/home_icon.png')),
            text: "Home",
          ),
          Tab(
            icon: SizedBox(
                height: 24,
                width: 24,
                child: Image.asset(
                    'assets/images/order_icon.png')),
            text: "Orders",
          ),
          Tab(
            icon: SizedBox(
                height: 24,
                width: 24,
                child: Image.asset(
                    'assets/images/watch_list_icon.png')),
            text: "Watch List",
          ),
          Tab(
            icon: SizedBox(
                height: 24,
                width: 24,
                child: Image.asset(
                    'assets/images/setting_icon.png')),
            text: "Settings",
          ),

        ],
      ),
    );
  }
}
