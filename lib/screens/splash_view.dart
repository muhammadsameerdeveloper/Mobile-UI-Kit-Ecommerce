import 'package:ecommerce/screens/welcome_view.dart';
import 'package:ecommerce/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const WelcomeView()),
      );
    });

    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Center(child: SvgPicture.asset("assets/images/splashscreen.svg")),
    );
  }
}
