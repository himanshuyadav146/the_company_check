import 'package:flutter/material.dart';

class CustomCompacButton extends StatelessWidget {
  CustomCompacButton(@required this.text,@required this.onButtonClick,
  @required this.r,@required this.g,@required this.b,@required this.opacity,
  @required this.txtR,@required this.txtG,@required this.txtB,@required this.txtOpacity);
  final String text;
  final VoidCallback onButtonClick;
  final int r,g,b;
  final double opacity;
  final int txtR,txtG,txtB;
  final double txtOpacity;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Color.fromRGBO(r, g, b, opacity)),
        overlayColor: MaterialStateProperty.all(Color.fromRGBO(59, 89, 161, 1)),
        side: MaterialStateProperty.all(BorderSide(
            color: Colors.blue,
            width: 1.0,
            style: BorderStyle.solid
        ))
      ),
        onPressed: onButtonClick, child: Text(text,
        style: TextStyle(
            color: Color.fromRGBO(txtR,txtG,txtB,txtOpacity),
            fontFamily: 'RobotoRegular',
            fontSize: 14,
            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
            fontWeight: FontWeight.normal,
            height: 1.5 /*PERCENT not supported*/
        )
    )
    );
  }
}
