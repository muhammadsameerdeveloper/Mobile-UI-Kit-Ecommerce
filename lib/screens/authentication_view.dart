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
                  width: SizeConfig.width * 0.80,
                ),
                SizedBox(height: 5),
                Image.asset("assets/images/welcome3.png"),
              ],
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 50, right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 115),
                    child: Text(
                      "What is your Firstname?",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.blackColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  SizedBox(
                    width: 320,
                    height: 50,
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
                  SizedBox(height: 35),
                  CustomButton(
                    height: 50,
                    width: 320,
                    text: "Start Ordering",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreenView(),
                        ),
                      );
                    },
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
