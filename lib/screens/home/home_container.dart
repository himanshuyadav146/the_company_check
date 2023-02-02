import 'package:flutter/material.dart';
import 'package:the_company_check/screens/home/home.dart';
import 'package:the_company_check/screens/home/store/home_store.dart';

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
    await homeStore.getHomePageDetails();
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
        unselectedLabelColor: Color.fromRGBO(59, 89, 161, 1),
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorColor: AppTheme.tabTextColor,
        labelPadding: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        indicatorPadding: EdgeInsets.zero,
        tabs: [
          Tab(
            icon: Icon(Icons.home_outlined,size: 20,),
            text: "Home",
          ),
          Tab(
            icon: Icon(Icons.shopping_cart_outlined,size: 20),
            text: "Orders",
          ),
          Tab(
            icon: Icon(Icons.lock_clock_outlined,size: 20),
            text: "Watch List",
          ),
          Tab(
            icon: Icon(Icons.settings_outlined,size: 20),
            text: "Settings",
          ),

        ],
      ),
    );
  }
}
