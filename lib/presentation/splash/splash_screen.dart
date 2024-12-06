import 'dart:async';

import 'package:flutter/material.dart';

import '../../core/utils/assets_manger.dart';
import '../../core/utils/colors_manager.dart';
import '../../core/utils/routes_manger.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, RoutesManager.homeRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsManager.scaffoldBg,
      child: Column(
        children: [
          Expanded(
              flex: 3,
              child: Image.asset(
                AssetsManager.splashLogo,
                width: 189,
                height: 211,
              )),
          Expanded(
              flex: 1,
              child:
                  Image.asset(AssetsManager.routeLogo, width: 213, height: 128))
        ],
      ),
    );
  }
}
