import 'package:flutter/material.dart';
import 'package:the_company_check/charts/bar_chart/bar_chart_page.dart';
import 'package:the_company_check/charts/bar_chart/bar_chart_page2.dart';

class ProfitAndLoss extends StatefulWidget {
  const ProfitAndLoss({Key? key}) : super(key: key);

  @override
  State<ProfitAndLoss> createState() => _ProfitAndLossState();
}

class _ProfitAndLossState extends State<ProfitAndLoss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: <Widget>[
            Row(
                children: <Widget>[
                  Image.asset('assets/images/pandl.png'),
                  const Padding(
                    padding: EdgeInsets.only(left: 18.0),
                    child: Text("Profit and Loss",
                        style: TextStyle(
                            color: Color.fromRGBO(28, 60, 138, 1),
                            fontFamily: 'RobotoRegular',
                            fontSize: 18,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.5 /*PERCENT not supported*/
                        )
                    ),
                  )
                ],
            ),
            BarChartPage2()

          ],
        ),
      ),
    );
  }
}
