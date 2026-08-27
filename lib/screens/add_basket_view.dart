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
      body: SizedBox(
        height: SizeConfig.height,
        width: SizeConfig.width,
        child: Stack(
          children: [
            Container(
              height: SizeConfig.height * 0.45,
              width: SizeConfig.width,
              color: AppColors.orangiColor,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40, right: 200),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.whiteColor,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.arrow_back_ios,
                            size: 15,
                            color: AppColors.blackColor,
                          ),
                          Text(
                            "Go Back",
                            style: TextStyle(
                              fontSize: 15,
                              color: AppColors.blackColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Image.asset(
                      widget.image,
                      width: SizeConfig.width * 0.45,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),

            Positioned(
              top: SizeConfig.height * 0.40,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
