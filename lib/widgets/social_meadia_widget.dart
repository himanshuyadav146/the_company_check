import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_company_check/models/company_details_model.dart';
import 'package:the_company_check/utils/app_utils.dart';

import '../models/social_list_model.dart';
import '../theme/app_theme.dart';

class SocialMeadiaWidget extends StatelessWidget {
   SocialMeadiaWidget(this.title, this.social, {Key? key}) : super(key: key);
  String title;
  Social? social;

//   @override
//   State<SocialMeadiaWidget> createState() => _SocialMeadiaWidgetState();
// }
//
// class _SocialMeadiaWidgetState extends State<SocialMeadiaWidget> {
   List<SocialListModel> list=[];

  List<SocialListModel> getSocialList(){
    if(social?.linkedin !=null){
      list.add(SocialListModel(
        title: "",
        imglink: 'assets/images/social_linked.png',
        link: social?.linkedin
      ));
    }

    if(social?.twitter !=null){
      list.add(SocialListModel(
          title: "",
          imglink: 'assets/images/social_twitter.png',
          link: social?.twitter
      ));
    }

    if(social?.facebook !=null){
      list.add(SocialListModel(
          title: "",
          imglink: 'assets/images/social_fb.png',
          link: social?.facebook
      ));
    }

    if(social?.instagram !=null){
      list.add(SocialListModel(
          title: "",
          imglink: 'assets/images/social_insta.png',
          link: social?.instagram
      ));
    }

    if(social?.youtube !=null){
      list.add(SocialListModel(
          title: "",
          imglink: 'assets/images/social_youtube.png',
          link: social?.youtube
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    var itemList = getSocialList();
    return  Card(
      elevation: 0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0,top: 20.0,bottom: 20.0),
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Text("${title}",
                style: TextStyle(
                    color: AppTheme.colorGray4,
                    fontFamily: 'RobotoRegular',
                    fontSize: 18,
                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.5 /*PERCENT not supported*/
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0.0,top: 20.0),
              child: SizedBox(
                height: 40,
                child: ListView.builder(
                    itemCount: itemList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: InkWell(
                          onTap: (){
                            AppUtils.launchInBrowser(itemList[index].link);
                          },
                          child: Image.asset(itemList[index].imglink),
                        ),
                      );
                    }
                )
              )
            )
          ],
        ),
      ),
    );
  }
}
