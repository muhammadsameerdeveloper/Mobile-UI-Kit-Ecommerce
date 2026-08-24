import 'package:ecommerce/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double width;
  final double height;
  final Color color;
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.width = 300,
    this.height = 40,
    this.color = AppColors.orangiColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.orangiColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(10),
          ),
        ),
        child: Text(
          text,
          style: GoogleFonts.poppins(color: AppColors.whiteColor),
        ),
      ),
    );
  }
}
