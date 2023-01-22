import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:the_company_check/screens/charges/mywidget.dart';
import '../../models/reponse.dart';


class MyList extends StatefulWidget {
  const MyList({super.key});

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  Response? responseModel;
  List<String>? balanceSheetKeys;

  late int selectedIndex;

  void getResponse() async {
    final String response = await rootBundle.loadString('assets/images/data.json');
    final data = await json.decode(response);
    responseModel = Response.fromJson(data);
    // if response model is not null
    selectedIndex = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: responseModel == null
            ? MaterialButton(
                onPressed: () => getResponse(),
                child: const Text(
                  'Get Data',
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              )
            : Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox (
                    height: 38,
                    child: ListView.builder(
                        shrinkWrap: true, //just set this property
                        itemCount:
                            responseModel?.data?.ratioDetails?.length ?? 0,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_, index) {
                          var ratioDetail =
                              responseModel?.data?.ratioDetails?[index];
                          return Container(
                            color: Colors.accents[index % 32],
                            child: GestureDetector(
                              onTap: () {
                                selectedIndex = index;
                                setState(() {});
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text(
                                    ratioDetail?.financialYear ?? "Av",
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemCount: responseModel
                                ?.data?.balanceSheetAoc?[selectedIndex]
                                .toJson()
                                .keys
                                .length ??
                            0,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (_, index) {
                          var balanceSheetAoc = responseModel
                              ?.data?.balanceSheetAoc?[selectedIndex];
                          var balanceSheetAocData = balanceSheetAoc?.toJson();
                          var mykey =
                              balanceSheetAocData?.keys.toList()[index] ?? "";
                          var myValue =
                              balanceSheetAocData?.values.toList()[index] ?? "";

                          return Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Container(),
                            // child: MyRow(
                            //   mykey: mykey,
                            //   myValue: myValue.toString(),
                            //   isBalanceSheet: false,
                            //   isProfitAndLoss: true,
                            //   isRatio: false,
                            //   percentage:"" ,
                            // ),
                          );
                        }),
                  ),
                ],
              ),
      )),
    );
  }
}
