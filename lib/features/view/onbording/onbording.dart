import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:reachymart/core/utils/app_colors.dart';
import 'package:reachymart/core/utils/app_strings.dart';
import 'package:reachymart/core/utils/assets_manager.dart';
import 'package:reachymart/features/components/components.dart';
import 'package:reachymart/features/components/sub_title.dart';
import 'package:reachymart/features/view/home/homescreen.dart';
import 'package:reachymart/features/widgets/item_page_view.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController? pageController;

  @override
  void initState() {
    super.initState();

    pageController = PageController(
      initialPage: 0,
    )..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kShadowColor,
      body: Stack(
        children: [
          CustomPageView(pageController: pageController),
          Positioned(
              bottom: 50,
              right: 10,
              child: SliderIndicator(
                  dotIndex:
                      pageController!.hasClients ? pageController?.page : 0)),
          Positioned(
            bottom: 55,
            left: 20,
            child: InkWell(
              onTap: () => navigateAndFinish(
                  context, const HomeScreen(url: 'https://reachymart.com/')),
              child: SubTitle(
                  text: pageController!.hasClients
                      ? (pageController?.page == 2 ? 'ابدا' : 'تخطي')
                      : 'تخطي',
                  size: 20,
                  color: kBlackColor,
                  weight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}

class SliderIndicator extends StatelessWidget {
  const SliderIndicator({super.key, required this.dotIndex});

  final num? dotIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const SizedBox(width: 280),
          DotsIndicator(
            dotsCount: 3,
            position: dotIndex!.toInt(),
            decorator: DotsDecorator(
              size: const Size.square(8.0),
              activeSize: const Size(18.0, 9.0),
              activeColor: kBlackColor.withOpacity(0.7),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomPageView extends StatelessWidget {
  final PageController? pageController;
  const CustomPageView({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        ItemPageView(
          iamge: pic1,
          subTitle: AppStrings.subTitle1,
        ),
        ItemPageView(
          iamge: pic2,
          subTitle: AppStrings.subTitle2,
        ),
        ItemPageView(
          iamge: pic3,
          subTitle: AppStrings.subTitle1,
        ),
      ],
    );
  }
}
