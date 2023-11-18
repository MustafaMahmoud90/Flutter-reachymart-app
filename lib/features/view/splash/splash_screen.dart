import 'package:flutter/material.dart';
import 'package:reachymart/core/utils/app_colors.dart';
import 'package:reachymart/core/utils/assets_manager.dart';
import 'package:reachymart/core/utils/media_query_values.dart';
import 'package:reachymart/features/components/components.dart';
import 'package:reachymart/features/view/onbording/onbording.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
 
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      navigateAndFinish(context, const OnBoardingScreen());
    });
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Image.asset(
            splash,
            width: context.width * 0.6,
          )),
        
        ],
      )),
    );
  }
}