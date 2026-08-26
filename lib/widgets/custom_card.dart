import 'package:ecommerce/utils/app_colors.dart';
import 'package:ecommerce/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String price;
  final String image;
  final VoidCallback onTap;
  const CustomCard({
    super.key,
    required this.title,
    required this.price,
    required this.image,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: SizeConfig.width * 0.4,
        height: SizeConfig.height * 0.3,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 10,
              spreadRadius: 2,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Icon(Icons.heart_broken)],
            ),
            Image.asset(image, height: 80),
            SizedBox(height: 8),
            Text(title),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(price),
                Icon(Icons.add_circle_outline, color: AppColors.orangiColor),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
