import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Overview"),),
      body: Container(
        width: MediaQuery
            .of(context)
            .size
            .width,
        height: 200,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                width: 371,
                height: 185.3050537109375,

                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                          width: 371,
                          height: 185.3050537109375,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 252, 248, 1),
                          )
                      ),
                    ),

                    Positioned(
                      top: 19.609130859375,
                      left: 10,
                      child: Container(
                        width: 344,
                        height: 146.08694458007812,
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              top: 2.94140625,
                              left: 78,
                              child: Text(
                                'Google Software Solutions', textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(138, 138, 138, 1),
                                    fontFamily: 'RobotoRegular',
                                    fontSize: 16,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1.5 /*PERCENT not supported*/
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
