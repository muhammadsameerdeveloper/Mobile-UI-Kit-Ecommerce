import 'package:ecommerce/utils/app_colors.dart';
import 'package:ecommerce/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: AppColors.orangiColor,
            width: SizeConfig.width,
            height: SizeConfig.height * 0.6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset("assets/images/welcome1.png"),
                    SizedBox(width: 40),
                  ],
                ),
                Image.asset("assets/images/welcome2.png"),
                SizedBox(height: 5),
                Image.asset("assets/images/welcome3.png"),
              ],
            ),
          ),
          Container(
            color: AppColors.whiteColor,
            height: SizeConfig.height * 0.4,
            width: SizeConfig.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Get The Freshest Fruit Salad Combo",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.blackColor,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "We deliver the best and freshest fruit salad in \ntown. Order for a combo today!!!",
                  style: GoogleFonts.poppins(
                    fontSize: 12.5,
                    color: AppColors.textGreyColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
