import 'package:ecommerce/utils/app_colors.dart';
import 'package:ecommerce/utils/size_config.dart';
import 'package:flutter/material.dart';

class CustomCardTwo extends StatelessWidget {
  final String title;
  final String price;
  final String image;
  final VoidCallback onTap;
  final Color? color;
  const CustomCardTwo({
    super.key,
    required this.title,
    required this.price,
    required this.image,
    required this.onTap,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: SizeConfig.width * 0.38,
        height: SizeConfig.height * 0.2,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: color ?? AppColors.whiteColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Icon(Icons.favorite_border_outlined)],
            ),
            Image.asset(image, height: 50),
            SizedBox(height: 5),
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
