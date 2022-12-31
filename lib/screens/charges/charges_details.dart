import 'package:flutter/material.dart';
import 'package:the_company_check/theme/app_theme.dart';
import 'package:the_company_check/utils/app_utils.dart';

import '../../models/company_details_model.dart';
import '../../widgets/custom_appbar.dart';

class ChargesDetails extends StatefulWidget {
  const ChargesDetails(this.charg, {Key? key}) : super(key: key);
  final Charge? charg;

  @override
  State<ChargesDetails> createState() => _ChargesDetailsState();
}

class _ChargesDetailsState extends State<ChargesDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
            onChanged: (value) {
              debugPrint(value);
            }
        ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 50.0,bottom: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/img1.png'),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: AppTheme.colorGray1,
            ),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  Row(
                    children: <Widget>[
                      const Expanded(child: Text("Charge ID",
                        style: TextStyle(
                            color: AppTheme.colorGray3,
                            fontFamily: 'RobotoBold',
                            fontSize: 12,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.5 /*PERCENT not supported*/
                        ),
                      )),
                      Text("${widget.charg?.chargeId}",
                        style: const TextStyle(
                            color: AppTheme.lightGray138_1,
                            fontFamily: 'RobotoRegular',
                            fontSize: 14,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.5 /*PERCENT not supported*/
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0,bottom: 4.0),
                    child: Divider(
                      color: AppTheme.colorGray3,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      const Expanded(child: Text("Bank",
                        style: TextStyle(
                            color: AppTheme.colorGray3,
                            fontFamily: 'RobotoBold',
                            fontSize: 12,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.5 /*PERCENT not supported*/
                        ),
                      )),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text("${widget.charg?.chargeHolderName}",
                            style: const TextStyle(
                                color: AppTheme.lightGray138_1,
                                fontFamily: 'RobotoRegular',
                                fontSize: 14,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.5 /*PERCENT not supported*/
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0,bottom: 4.0),
                    child: Divider(
                      color: AppTheme.colorGray3,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      const Expanded(child: Text("Status",
                        style: TextStyle(
                            color: AppTheme.colorGray3,
                            fontFamily: 'RobotoBold',
                            fontSize: 12,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.5 /*PERCENT not supported*/
                        ),
                      )),
                      Text("${widget.charg?.status}",
                        style: TextStyle(
                            color: AppUtils.getColorCode("${widget.charg?.status}"),
                            fontFamily: 'RobotoRegular',
                            fontSize: 12,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.5 /*PERCENT not supported*/
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0,bottom: 4.0),
                    child: Divider(
                      color: AppTheme.colorGray3,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      const Expanded(child: Text("Creation Date",
                        style: TextStyle(
                            color: AppTheme.colorGray3,
                            fontFamily: 'RobotoBold',
                            fontSize: 12,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.5 /*PERCENT not supported*/
                        ),
                      )),
                      Text("${AppUtils.getDDMMYY(widget.charg?.dateOfCreation)}",
                        style: TextStyle(
                            color: AppTheme.lightGray138_1,
                            fontFamily: 'RobotoRegular',
                            fontSize: 12,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.5 /*PERCENT not supported*/
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0,bottom: 4.0),
                    child: Divider(
                      color: AppTheme.colorGray3,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      const Expanded(child: Text("Last Modified On",
                        style: TextStyle(
                            color: AppTheme.colorGray3,
                            fontFamily: 'RobotoBold',
                            fontSize: 12,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.5 /*PERCENT not supported*/
                        ),
                      )),
                      Text("${AppUtils.getDDMMYY(widget.charg?.dateOfModification)}",
                        style: TextStyle(
                            color: AppTheme.lightGray138_1,
                            fontFamily: 'RobotoRegular',
                            fontSize: 12,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.5 /*PERCENT not supported*/
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0,bottom: 4.0),
                    child: Divider(
                      color: AppTheme.colorGray3,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      const Expanded(child: Text("Satisfaction Date",
                        style: TextStyle(
                            color: AppTheme.colorGray3,
                            fontFamily: 'RobotoBold',
                            fontSize: 12,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.5 /*PERCENT not supported*/
                        ),
                      )),
                      Text("${AppUtils.getDDMMYY(widget.charg?.dateOfSatisfaction)}",
                        style: TextStyle(
                            color: AppTheme.lightGray138_1,
                            fontFamily: 'RobotoRegular',
                            fontSize: 12,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.5 /*PERCENT not supported*/
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0,bottom: 4.0),
                    child: Divider(
                      color: AppTheme.colorGray3,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      const Expanded(child: Text("Satisfaction Date",
                        style: TextStyle(
                            color: AppTheme.colorGray3,
                            fontFamily: 'RobotoBold',
                            fontSize: 12,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.5 /*PERCENT not supported*/
                        ),
                      )),
                      Text("${AppUtils.getDDMMYY(widget.charg?.dateOfSatisfaction)}",
                        style: TextStyle(
                            color: AppTheme.lightGray138_1,
                            fontFamily: 'RobotoRegular',
                            fontSize: 12,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.5 /*PERCENT not supported*/
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0,bottom: 4.0),
                    child: Divider(
                      color: AppTheme.colorGray3,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      const Expanded(child: Text("Amount",
                        style: TextStyle(
                            color: AppTheme.colorGray3,
                            fontFamily: 'RobotoBold',
                            fontSize: 12,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.5 /*PERCENT not supported*/
                        ),
                      )),
                      Text("${widget.charg?.amount}",
                        style: TextStyle(
                            color: AppTheme.lightGray138_1,
                            fontFamily: 'RobotoRegular',
                            fontSize: 12,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.5 /*PERCENT not supported*/
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
