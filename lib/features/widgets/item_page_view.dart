// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:reachymart/core/utils/app_colors.dart';
import 'package:reachymart/core/utils/media_query_values.dart';
import 'package:reachymart/features/components/sub_title.dart';

class ItemPageView extends StatelessWidget {
  String iamge;
  String subTitle;

  ItemPageView({super.key, required this.iamge, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.center,
          child: Image.asset(
            iamge,
            width: context.width * 0.5,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: SubTitle(
              text: subTitle,
              size: 17,
              color: kBlackColor,
              weight: FontWeight.w500),
        ),
      ],
    );
  }
}
