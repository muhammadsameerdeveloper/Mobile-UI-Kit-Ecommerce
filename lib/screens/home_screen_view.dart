import 'package:ecommerce/constent.dart';
import 'package:ecommerce/constents.dart';
import 'package:ecommerce/screens/add_basket_view.dart';
import 'package:ecommerce/utils/app_colors.dart';
import 'package:ecommerce/utils/size_config.dart';
import 'package:ecommerce/widgets/custom_card.dart';
import 'package:ecommerce/widgets/custom_card_two.dart';
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
    SizeConfig.init(context);
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
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              ListTile(
                tileColor: AppColors.orangiColor,
                leading: CircleAvatar(
                  radius: 35,
                  backgroundImage: NetworkImage(
                    "https://publicdomainvectors.org/photos/abstract-user-flat-3.png",
                  ),
                ),
                title: Text(
                  "Muhammad Sameer",
                  style: GoogleFonts.poppins(
                    color: AppColors.whiteColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Text(
                  "Welcome",
                  style: GoogleFonts.poppins(
                    color: AppColors.whiteColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
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
                height: SizeConfig.height * 0.25,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: constent.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(right: 12, top: 5, bottom: 5),
                      child: CustomCard(
                        title: constent[index]["title"]!,
                        price: constent[index]["price"]!,
                        image: constent[index]["image"]!,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AddBasketView(
                                image: constent[index]["image"]!,
                                title: constent[index]["title"]!,
                                price: constent[index]["price"]!,
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 30),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Hottest",
                        style: GoogleFonts.poppins(
                          color: AppColors.blackColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Popular",
                        style: GoogleFonts.poppins(
                          color: AppColors.textGreyColor,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "New combo",
                        style: GoogleFonts.poppins(
                          color: AppColors.textGreyColor,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Top",
                        style: GoogleFonts.poppins(
                          color: AppColors.textGreyColor,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                height: 165,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: CustomCardTwo(
                        title: data[index]["title"],
                        price: data[index]["price"],
                        image: data[index]["image"],
                        color: data[index]["color"],
                        onTap: () {},
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
