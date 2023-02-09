import 'package:flutter/material.dart';
import 'package:the_company_check/models/product_model.dart';

import '../theme/app_theme.dart';
import '../utils/app_utils.dart';
import '../utils/string_extension.dart';


class ProductItemWidget extends StatelessWidget {
  ProductItemWidget(this.responseProductList, {Key? key}) : super(key: key);
  ProductModel responseProductList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130.0,
      child: InkWell(
        onTap: (){
          // if(trendingCompany!=null){
          //   var appSingleton = AppSingleton();
          //   appSingleton.cinNo = trendingCompany!.cIN!;
          //   CommonNavigation().navigateScreens(context, RouteName.routNameCompanyDetailContainer);
          // }
        },
        child: Card(
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 45.0,
                    width: 45.0,
                    child:  AppUtils.getImage(responseProductList.imageLink!,""),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(responseProductList.productName!.toTitleCase(),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          softWrap: false,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppTheme.colorGray,
                            fontFamily: 'RobotoRegular',
                            fontSize: 14,
                            letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.5,
                            /*PERCENT not supported*/
                          )),
                    ),
                  ),

                ],
              ),
            )
        ),
      ),
    );
  }
}
