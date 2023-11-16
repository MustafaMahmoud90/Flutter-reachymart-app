// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:reachymart/core/utils/app_colors.dart';

class TextFormGlobal extends StatelessWidget {
  const TextFormGlobal(
      {super.key,
      required this.controller,
      required this.text,
      required this.textInputType,
      required this.obscure});
  final TextEditingController controller;
  final String text;
  final TextInputType textInputType;
  final bool obscure;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      padding: const EdgeInsets.only(top: 3, left: 15),
      decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(color: primary.withOpacity(0.1), blurRadius: 7),
          ]
          ),
      child: TextFormField(
        controller: controller,
        keyboardType: textInputType,
        obscureText: obscure,
        decoration: InputDecoration(
          // prefixIcon: Container(
          //   width: 40,
          //   height: 40,
          //   color: kBlackColor,
          // ),
         
          hintText: text, border: InputBorder.none),
      ),
    );
  }
}
