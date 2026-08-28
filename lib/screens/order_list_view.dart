import 'package:ecommerce/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderListView extends StatelessWidget {
  const OrderListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.orangiColor,
        centerTitle: true,
        title: Text(
          "My Basket",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            color: AppColors.whiteColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20),
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          minTileHeight: 100,

          leading: Container(
            height: 90,
            width: 70,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
          ),

          title: const Text("Product Name"),
        ),
      ),
    );
  }
}
