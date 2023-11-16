import 'package:flutter/material.dart';
import 'package:reachymart/core/utils/app_colors.dart';
import 'package:reachymart/core/utils/assets_manager.dart';
import 'package:reachymart/features/components/sub_title.dart';

class OfersWidgets extends StatelessWidget {
  const OfersWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SubTitle(
                  text: 'المزيد',
                  size: 12,
                  color: kBlackColor.withOpacity(0.3),
                  weight: FontWeight.w500),
              SubTitle(
                  text: 'وفر اكتر النهاردة',
                  size: 17,
                  color: kBlackColor,
                  weight: FontWeight.w600),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 6,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 5.5,
                childAspectRatio: 1.5 / 2.8,
              ),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    // width: 100,
                    height: 130,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 60),
                          child: Icon(Icons.favorite_outline),
                        ),
                        Image.asset(
                          pngfuel5,
                          width: 100,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SubTitle(
                                  text: '7 EGP',
                                  size: 10,
                                  color: kBlackColor,
                                  weight: FontWeight.w600),
                              SubTitle(
                                  text: 'جهينة ميكس',
                                  size: 10,
                                  color: kBlackColor,
                                  weight: FontWeight.w600),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 40,
                          decoration: const BoxDecoration(
                              color: kPicColor8,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SubTitle(
                                  text: 'اضف للعربة',
                                  size: 15,
                                  color: whiteColor,
                                  weight: FontWeight.w600),
                              const SizedBox(
                                width: 8,
                              ),
                              Image.asset(
                                pngfuel4,
                                fit: BoxFit.cover,
                                width: 12,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}
