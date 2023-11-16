// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:reachymart/core/utils/app_strings.dart';

class MainTitle extends StatelessWidget {
  String text;

  MainTitle({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.start,
      style: const TextStyle(
        color: Colors.black,
        fontFamily: AppStrings.fontFamily,
        fontSize: 24,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
