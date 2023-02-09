import 'package:flutter/material.dart';
import 'package:the_company_check/screens/company_details/store/company_search_store.dart';

import '../../models/home_model.dart';
import '../../models/search_list_model.dart';
import '../../routs/common_navigation.dart';
import '../../routs/route_name.dart';
import '../../theme/app_theme.dart';
import '../../utils/AppSingleton.dart';
import '../../widgets/company_card.dart';
import '../../widgets/home_vertical_item_widget.dart';

class CompanySearchScreen extends StatefulWidget implements PreferredSizeWidget{
  const CompanySearchScreen({Key? key}) : super(key: key);

  @override
  State<CompanySearchScreen> createState() => _CompanySearchScreenState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

}

class _CompanySearchScreenState extends State<CompanySearchScreen> {
  CompanySearchStore  companySearchStore = CompanySearchStore();
  List<DatuSerch>? resData;
  AppSingleton appSingleton = AppSingleton();

  @override
  void initState() {
    super.initState();

  }

  void _getData(String str) async {
    if(str.length>2){
      await companySearchStore.getCompanySearch(str);
      resData = companySearchStore.response.data;
      setState(() {

      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
          iconTheme: IconThemeData(
            size: 30,
            color: Colors.white,
          ),
          title: Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4), color: Colors.white),
                child: SizedBox(
                  height: 30,
                  child: Padding(
                      padding: const EdgeInsets.only(left: 12.0, right: 12),
                      child: TextField(
                          style: const TextStyle(
                              color: Colors.black38,
                              fontWeight: FontWeight.w500),
                          onChanged: (value){
                            print(value);
                            _getData(value);
                          },
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(10.0),
                              suffixIcon: Icon(Icons.search),
                              hintText: 'Search your company',
                              focusedBorder: InputBorder.none,
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                  color: AppTheme.colorGrayText,
                                  fontFamily: 'RobotoRegular',
                                  fontSize: 14,
                                  letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5)
                          )
                      )

                  ),
                )),
          )),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: new BoxDecoration(
            color: AppTheme.colorLight
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Expanded(
                  child: resData !=null
                      ? ListView.builder(
                       itemCount: resData?.length,
                      itemBuilder: (ctx,i){
                        return ListTile(
                          title: CompanyCard(resData![i]),
                          onTap: (){
                            //CommonNavigation(resData![i].currentCin).navigateScreens(context, RouteName.routNameOverview);
                            var appSingleton = AppSingleton();
                            appSingleton.cinNo = resData![i].currentCin!;
                            CommonNavigation().navigateScreens(context, RouteName.routNameCompanyDetailContainer);
                          },
                        );
                      }
                  )
                      : Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Top Searched Companies",
                                style: TextStyle(
                                    color: AppTheme.colorGray,
                                    fontFamily: 'RobotoRegular',
                                    fontSize: 18,
                                    letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1.5 /*PERCENT not supported*/
                                )),
                          ),
                          Expanded(
                            child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: appSingleton.response.data?.trendingCompanies?.length,
                              itemBuilder: (context,index){
                                InterestedCompany? interestedCompany = appSingleton.response.data?.interestedCompanies![index];
                                return HomeVerticalItemWidget(
                                    "https://images.thecompanycheck.com/companylogo/${interestedCompany?.companyLogo}",
                                    interestedCompany?.companyName!,
                                    interestedCompany?.location!,
                                    interestedCompany
                                );
                              }
                    ),
                  ),
                          ),
                        ],
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
