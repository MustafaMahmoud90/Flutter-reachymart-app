import 'package:flutter/material.dart';
import 'package:reachymart/core/utils/app_colors.dart';
import 'package:reachymart/core/utils/assets_manager.dart';
import 'package:reachymart/features/components/sub_title.dart';
import 'package:reachymart/features/widgets/text_form_filed.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.emailController,
  });

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 185,
          color: backCololr,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(pngfuel2),
                    Image.asset(pngfuel1),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
            top: 55,
            right: 25,
            child: SubTitle(
                text: 'اهلا مصطفي',
                size: 15,
                color: kBlackColor,
                weight: FontWeight.w500)),
        Positioned(
            bottom: 70,
            right: 25,
            child: SubTitle(
                text: 'عن ماذا تبحث اليوم؟',
                size: 15,
                color: kBlackColor.withOpacity(0.3),
                weight: FontWeight.w500)),
        Positioned(
          top: 114.0,
          right: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              width: 400,
              height: 50,
              child: TextFormGlobal(
                controller: emailController,
                text: '',
                obscure: false,
                textInputType: TextInputType.emailAddress,
              ),
            ),
          ),
        ),
        Positioned(
          top: 120,
          left: 15,
          child: Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
                color: kPicColor8, borderRadius: BorderRadius.circular(20)),
            child: Image.asset(
              search,
              color: whiteColor,
              width: 20,
              height: 20,
            ),
          ),
        ),
      ],
    );
  }
}
