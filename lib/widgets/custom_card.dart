import 'package:ecommerce/utils/app_colors.dart';
import 'package:ecommerce/utils/size_config.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  final String title;
  final int price;
  final String image;
  final VoidCallback onTap;
  final Function(bool) onFavorite;

  const CustomCard({
    super.key,
    required this.title,
    required this.price,
    required this.image,
    required this.onTap,
    required this.onFavorite,
  });

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  bool favorites = false;
  int addCount = 1;
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    int totalPrice = widget.price * addCount;
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: SizeConfig.width * 0.43,
        height: SizeConfig.height * 0.3,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.25),
              blurRadius: 20,
              spreadRadius: 2,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      favorites = !favorites;
                    });
                    widget.onFavorite(favorites);
                  },
                  child: Icon(
                    favorites ? Icons.favorite : Icons.favorite_border_outlined,
                    color: AppColors.orangiColor,
                  ),
                ),
              ],
            ),
            Image.asset(widget.image, height: 80),
            SizedBox(height: 8),
            Text(widget.title),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "₦ $totalPrice",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  child: Icon(
                    Icons.add_circle_outline,
                    color: AppColors.orangiColor,
                  ),
                  onTap: () {
                    setState(() {
                      addCount++;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
