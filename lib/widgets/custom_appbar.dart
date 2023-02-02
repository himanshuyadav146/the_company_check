import 'package:flutter/material.dart';

import '../routs/common_navigation.dart';
import '../routs/route_name.dart';
import '../theme/app_theme.dart';

typedef StringToVoidFunc = Function(String);

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final StringToVoidFunc onChanged;

  const CustomAppBar(
      {super.key, this.height = kToolbarHeight, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: SizedBox(
          height: 30,
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.white),
              child: Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12),
                  child: TextField(
                      onTap: () {
                        FocusScope.of(context).requestFocus(new FocusNode());
                        CommonNavigation().navigateScreens(
                            context, RouteName.routNameCompanySearch);
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
                              height: 1.5 /*PERCENT not supported*/
                          )
                      )))),
        ));
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}

class CompanyList extends StatefulWidget {
  const CompanyList({Key? key}) : super(key: key);

  @override
  State<CompanyList> createState() => _CompanyListState();
}

class _CompanyListState extends State<CompanyList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext ctx, int index) {
          return ListTile(
              leading: const Icon(Icons.list),
              trailing: const Text(
                "GFG",
                style: TextStyle(color: Colors.green, fontSize: 15),
              ),
              title: Text("List item $index"));
        });
  }
}
