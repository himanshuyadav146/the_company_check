import 'package:flutter/material.dart';
import 'package:the_company_check/models/home_model.dart';

import '../../theme/app_theme.dart';
import '../../utils/app_utils.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/home_company_info_card_widget.dart';
import '../../widgets/home_item_card_widget.dart';
import '../../widgets/home_trending_item.dart';
import '../../widgets/home_vertical_item_widget.dart';


class Home extends StatefulWidget {
   Home(this.response, {Key? key}) : super(key: key);
  HomeModel response;
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
  //  TrendingCompany trendingCompany = widget.response.data?.trendingCompanies as TrendingCompany;
    return Scaffold(
      appBar: CustomAppBar(onChanged: (value) {

      }),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    HomeCompanyInfoCard('assets/images/companies_icon.png',"Companies",
                        "8+",null),

                    // HomeCompanyInfoCard('assets/images/companies_icon.png',"Companies",
                    //     AppUtils.numDifferentiation(widget.response.data?.companyDetailsCount![0]?.totalCompanies as int),null),
                    HomeCompanyInfoCard('assets/images/group_companys.png',"Total LLPs","6 Lakh +",null),
                    HomeCompanyInfoCard('assets/images/directors_kmp.png',"Directors & KMP","7 Lakh +",null),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    HomeCompanyInfoCard('assets/images/week_calendar.png',"Weekly Incorporation","${widget.response.data?.companyDetailsCount![0]?.weeklyComCount}",null),
                    HomeCompanyInfoCard('assets/images/month_calendar.png',"Monthly Incorporation","${widget.response.data?.companyDetailsCount![0]?.monthComCount}",null),
                    HomeCompanyInfoCard('assets/images/screened_companies_diagram.png',"Screened Companies ","${widget.response.data?.companyDetailsCount![0]?.screenedCompanies}",null),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Trending Companies",
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
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: SizedBox(
                    height: 150,
                    child: ListView.builder(
                      itemCount: widget.response.data?.trendingCompanies?.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index){
                          TrendingCompany? trendingCompany = widget.response.data?.trendingCompanies![index];
                          return HomeTrendingItems(
                              "https://images.thecompanycheck.com/companylogo/${trendingCompany?.companyLogo}",
                            trendingCompany?.companyName!,
                            trendingCompany?.location!,
                              trendingCompany
                          );
                        }
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Align(
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
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: ListView.builder(
                    shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: widget.response.data?.trendingCompanies?.length,
                      itemBuilder: (context,index){
                        InterestedCompany? interestedCompany = widget.response.data?.interestedCompanies![index];
                        return HomeVerticalItemWidget(
                            "https://images.thecompanycheck.com/companylogo/${interestedCompany?.companyLogo}",
                            interestedCompany?.companyName!,
                            interestedCompany?.location!,
                            interestedCompany
                        );
                      }
                  ),
                ),
              ],
            ),
          ),
        ),

      ),
    );
  }
}
