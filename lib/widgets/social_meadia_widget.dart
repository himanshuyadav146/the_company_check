import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_company_check/models/company_details_model.dart';
import 'package:the_company_check/utils/app_utils.dart';

import '../models/social_list_model.dart';
import '../theme/app_theme.dart';

class SocialMeadiaWidget extends StatefulWidget {
   SocialMeadiaWidget(this.title, this.social, {Key? key}) : super(key: key);
  String title;
  Social? social;

  @override
  State<SocialMeadiaWidget> createState() => _SocialMeadiaWidgetState();
}

class _SocialMeadiaWidgetState extends State<SocialMeadiaWidget> {
   List<SocialListModel> list=[];

  List<SocialListModel> getSocialList(){
    if(widget?.social?.linkedin !=null){
      list.add(SocialListModel(
        title: "",
        imglink: 'assets/images/social_linked.png',
        link: widget.social?.linkedin
      ));
    }

    if(widget?.social?.twitter !=null){
      list.add(SocialListModel(
          title: "",
          imglink: 'assets/images/social_twitter.png',
          link: widget.social?.twitter
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0,top: 20.0,bottom: 20.0),
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Text("${widget.title}",
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
                    itemCount: getSocialList().length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: InkWell(
                          onTap: (){
                            AppUtils.launchInBrowser(getSocialList()[index].link);
                          },
                          child: Image.asset(getSocialList()[index].imglink),
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
