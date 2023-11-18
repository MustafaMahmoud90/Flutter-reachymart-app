
import 'package:flutter/material.dart';
import 'package:reachymart/core/utils/app_colors.dart';
import 'package:reachymart/features/components/sub_title.dart';

class NewContainer extends StatelessWidget {
 
  final String image;
  final String text;

  const NewContainer({super.key,required this.image , required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: textInfoColor, width: 0.5),
      ),
      child: Row(
        children: [
          SubTitle(
              text: text,
              size: 15,
              color: kBlackColor,
              weight: FontWeight.w400),
          const SizedBox(width: 6),
          Image.asset(image, width: 15),
        ],
     ),
    );
  }
}