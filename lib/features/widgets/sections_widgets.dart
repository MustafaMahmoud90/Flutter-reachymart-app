import 'package:flutter/material.dart';
import 'package:reachymart/core/utils/app_colors.dart';
import 'package:reachymart/core/utils/assets_manager.dart';
import 'package:reachymart/features/components/new_container.dart';
import 'package:reachymart/features/components/sub_title.dart';

class SectionsWidgets extends StatelessWidget {
  const SectionsWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SubTitle(
                    text: 'المزيد',
                    size: 12,
                    color: kBlackColor.withOpacity(0.3),
                    weight: FontWeight.w500),
                SubTitle(
                    text: 'الأقسام',
                    size: 17,
                    color: kBlackColor,
                    weight: FontWeight.w500),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  NewContainer(
                    image: pngfuel3,
                    text: 'سوبر ماركت',
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  NewContainer(
                    image: pngfuel3,
                    text: 'سوبر ماركت',
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  NewContainer(
                    image: pngfuel3,
                    text: 'سوبر ماركت',
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  NewContainer(
                    image: pngfuel3,
                    text: 'سوبر ماركت',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
