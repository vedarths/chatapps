import 'package:chatapps/src/widgets/commons.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {

  final String text;
  final double size;
  final Color color;
  final String family;
  final FontWeight weight;


  CustomText({@required this.text, this.size, this.color, this.weight, this.family});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: size ?? 18, color: color ?? BLACK, fontWeight: weight ?? FontWeight.bold, fontFamily: family ?? 'Monteserrat'));
  }
}
