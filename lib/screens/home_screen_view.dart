import 'package:ecommerce/constent.dart';
import 'package:ecommerce/utils/app_colors.dart';
import 'package:ecommerce/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({super.key});

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      drawerScrimColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  FontAwesomeIcons.basketShopping,
                  size: 20,
                  color: AppColors.orangiColor,
                ),
                Text(
                  "My basket",
                  style: TextStyle(fontSize: 10, color: AppColors.blackColor),
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: Drawer(),
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello Tony, What fruit salad \ncombo do you want today?",
              style: GoogleFonts.poppins(
                fontSize: 15,
                color: AppColors.blackColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(
                  width: 270,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search for fruit salad combos",
                      hintStyle: TextStyle(fontSize: 14),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                FaIcon(FontAwesomeIcons.exchange),
              ],
            ),
            SizedBox(height: 30),
            Text(
              "Recommended Combo",
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: constent.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: 12),
                    child: CustomCard(
                      title: constent[index]["title"]!,
                      price: constent[index]["price"]!,
                      image: constent[index]["image"]!,
                      onTap: () {},
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
