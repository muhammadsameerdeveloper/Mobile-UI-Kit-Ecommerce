import 'package:ecommerce/screens/authentication_view.dart';
import 'package:ecommerce/utils/app_colors.dart';
import 'package:ecommerce/utils/size_config.dart';
import 'package:ecommerce/widgets/custom_button.dart';
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
                SizedBox(height: 10),
                Image.asset("assets/images/welcome3.png"),
              ],
            ),
          ),
          Container(
            color: AppColors.whiteColor,
            height: SizeConfig.height * 0.4,
            width: SizeConfig.width,
            child: Padding(
              padding: const EdgeInsets.only(top: 50, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Get The Freshest Fruit Salad Combo",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.blackColor,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "We deliver the best and freshest fruit salad in \ntown. Order for a combo today!!!",
                    style: GoogleFonts.poppins(
                      fontSize: 12.5,
                      color: AppColors.textGreyColor,
                    ),
                  ),
                  SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: CustomButton(
                      height: 50,
                      width: 320,
                      text: "Let's Continue",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AuthenticationView(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
