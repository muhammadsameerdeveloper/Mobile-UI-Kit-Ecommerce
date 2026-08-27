import 'package:ecommerce/utils/app_colors.dart';
import 'package:ecommerce/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30, right: 45),
                      child: Text(
                        widget.title,
                        style: GoogleFonts.poppins(
                          fontSize: 26,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          child: Container(
                            height: 28,
                            width: 28,
                            decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: AppColors.blackColor,
                                width: 1,
                              ),
                            ),
                            child: Icon(
                              Icons.remove,
                              color: AppColors.blackColor,
                            ),
                          ),
                          onTap: () {},
                        ),
                        SizedBox(width: 20),
                        Text("1", style: TextStyle(fontSize: 25)),
                        SizedBox(width: 20),
                        GestureDetector(
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: AppColors.lightPink,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.add,
                              color: AppColors.orangiColor,
                            ),
                          ),
                          onTap: () {},
                        ),
                        Row(
                          children: [
                            Text(
                              widget.price,
                              style: TextStyle(
                                fontSize: 25,
                                color: AppColors.blackColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
