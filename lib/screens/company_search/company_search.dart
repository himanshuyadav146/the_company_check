import 'package:flutter/material.dart';
import 'package:the_company_check/screens/company_details/store/company_search_store.dart';

import '../../models/search_list_model.dart';
import '../../routs/common_navigation.dart';
import '../../routs/route_name.dart';
import '../../theme/app_theme.dart';
import '../../utils/AppSingleton.dart';
import '../../widgets/company_card.dart';

class CompanySearchScreen extends StatefulWidget implements PreferredSizeWidget{
  const CompanySearchScreen({Key? key}) : super(key: key);

  @override
  State<CompanySearchScreen> createState() => _CompanySearchScreenState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

}

class _CompanySearchScreenState extends State<CompanySearchScreen> {
  //SearchListModel? searchListModel = SearchListModel();
  CompanySearchStore  companySearchStore = CompanySearchStore();
  List<DatuSerch>? resData;

  @override
  void initState() {
   // _getData();
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
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          title: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4), color: Colors.white),
              child: SizedBox(
                height: 40,
                child: Padding(
                    padding: const EdgeInsets.only(left: 12.0, right: 12),
                    child: TextField(
                        style: const TextStyle(
                            color: Colors.black38, fontWeight: FontWeight.w500),
                        onChanged: (value){
                          print(value);
                          _getData(value);
                        },
                        decoration: const InputDecoration(
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
              ))),
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
                            CommonNavigation().navigateScreens(context, '/');
                          },
                        );
                      }
                  )
                      : const Text("No result found, Please try again",
                  style: TextStyle(fontSize: 20),)
              ),
            ],
          ),
        ),
      ),
    );
  }
}
