import 'package:ecommerce/utils/app_colors.dart';
import 'package:ecommerce/utils/size_config.dart';
import 'package:flutter/material.dart';

class AddBasketView extends StatefulWidget {
  final String title;
  final String price;
  final String image;
  const AddBasketView({
    super.key,
    required this.title,
    required this.price,
    required this.image,
  });

  @override
  State<AddBasketView> createState() => _AddBasketViewState();
}

class _AddBasketViewState extends State<AddBasketView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: SizeConfig.height * 0.45,
            width: SizeConfig.width,
            color: AppColors.orangiColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 20),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.whiteColor,
                    ),
                    child: Text(
                      "<Go back",
                      style: TextStyle(color: AppColors.blackColor),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: Image.asset(
                    widget.image,
                    width: SizeConfig.width * 0.55,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: SizeConfig.height * 0.55,
            width: SizeConfig.width,

            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
