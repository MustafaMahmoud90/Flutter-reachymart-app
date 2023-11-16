import 'package:flutter/material.dart';
import 'package:reachymart/core/utils/app_colors.dart';
import 'package:reachymart/core/utils/assets_manager.dart';
import 'package:reachymart/features/widgets/custom_appbar.dart';
import 'package:reachymart/features/widgets/ofers_widgets.dart';
import 'package:reachymart/features/widgets/sections_widgets.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kShadowColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(emailController: emailController),
            const SizedBox(
              height: 7,
            ),
            const SectionsWidgets(),
            const SizedBox(
              height: 20,
            ),
            const OfersWidgets(),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 450,
                height: 150,
                 decoration: BoxDecoration(
                   color: kBlackColor,
                   borderRadius: BorderRadius.circular(15),
                   image: const DecorationImage(image: AssetImage(pic4),fit: BoxFit.cover),
                 ),
                ),
            ),
             const SizedBox(height: 20,),
            //  Container(
            //   width: 318,
            //   height: 314,
            //   decoration: BoxDecoration(
            //   color: kPicColor9,
            //   borderRadius: BorderRadius.circular(12),
            //   ),
            //  ),
             const SizedBox(height: 20,),
          ],
        ),
      )),
    );
  }
}


