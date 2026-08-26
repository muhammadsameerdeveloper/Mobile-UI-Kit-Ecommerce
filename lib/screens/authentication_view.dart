import 'package:ecommerce/screens/home_screen_view.dart';
import 'package:ecommerce/utils/app_colors.dart';
import 'package:ecommerce/utils/size_config.dart';
import 'package:ecommerce/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthenticationView extends StatelessWidget {
  const AuthenticationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: SizeConfig.height * 0.6,
            width: SizeConfig.width,
            color: AppColors.orangiColor,
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
                Image.asset(
                  "assets/images/Authentication.png",
                  width: SizeConfig.width * 0.57,
                ),
                SizedBox(height: 5),
                Image.asset("assets/images/welcome3.png"),
              ],
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "What is your Firstname?",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.blackColor,
                  ),
                ),
                SizedBox(
                  width: 300,
                  height: 40,
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Tony",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                CustomButton(
                  text: "Start Ordering",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreenView()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
