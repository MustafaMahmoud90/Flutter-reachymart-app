// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:reachymart/core/utils/app_strings.dart';

class SubTitle extends StatelessWidget {
  String text;
  double size;
  Color color;
  FontWeight weight;
  TextAlign align;

  SubTitle(
      {super.key,
      required this.text,
      required this.size,
      required this.color,
      required this.weight,
      this.align = TextAlign.center});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      // textAlign: align,
      style: TextStyle(
        color: color,
        fontFamily: AppStrings.fontFamily,
        fontSize: size,
        fontWeight: weight,
      ),
      maxLines: 4,
     textDirection: TextDirection.rtl,
    
    );
  }
}
