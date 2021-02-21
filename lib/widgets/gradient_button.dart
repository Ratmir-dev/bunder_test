import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[
      Color.fromRGBO(210, 57, 223, 1),
      Color.fromRGBO(30, 199, 236, 1),
      Color.fromRGBO(210, 57, 223, 1),
    ],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
  final innerDecoration = BoxDecoration(
    color: Color.fromRGBO(243, 243, 243, 1),
    borderRadius: BorderRadius.circular(6),
  );

  final gradientBoxDecoration = BoxDecoration(
    gradient: LinearGradient(
      begin: const FractionalOffset(0.0, 0.0),
      end: const FractionalOffset(4.0, 0.0),
      colors: <Color>[
        Color.fromRGBO(210, 57, 223, 1),
        Color.fromRGBO(30, 199, 236, 1),
        Color.fromRGBO(210, 57, 223, 1),
      ],
    ),
    borderRadius: BorderRadius.circular(7),
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Container(
          child: Center(
            child: Text(
              "INVITE",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  foreground: Paint()..shader = linearGradient),
            ),
          ),
          decoration: innerDecoration,
        ),
      ),
      height: 30,
      decoration: gradientBoxDecoration,
      width: 128,
    );
  }
}
