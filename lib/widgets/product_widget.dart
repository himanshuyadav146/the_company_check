import 'package:flutter/material.dart';
import 'package:the_company_check/models/product_model.dart';
import 'package:the_company_check/widgets/product_item_widget.dart';

import '../theme/app_theme.dart';

class ProductWidget extends StatelessWidget {
   ProductWidget(this.title, this.responseProductList,{Key? key}) : super(key: key);
  String title;
  List<ProductModel>? responseProductList;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: AppTheme.white,
      child: Column(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              color: AppTheme.colorGray9,
              borderRadius: BorderRadius.all(
                Radius.circular(0),
              ),
            ),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("${title}",
                style: TextStyle(
                    color: AppTheme.colorGray4,
                    fontFamily: 'RobotoRegular ',
                    fontSize: 14,
                    letterSpacing:
                    0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.5 /*PERCENT not supported*/
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 130,
              child: ListView.builder(
                  itemCount:responseProductList?.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                   return ProductItemWidget(responseProductList![index]);
                  }
              ),
            ),
          )
        ],
      ),
    );
  }
}
