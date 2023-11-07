import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task1/widgets/homepage_categories.dart';
import 'package:task1/widgets/homepage_popularproducts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> categoryname = ["Luxe", "HD", "Eye", "Revlon"];
  List<Color> categoryolors = [
    const Color(0xffEA4335),
    const Color(0xff4D2161),
    const Color(0xff249B3E),
    const Color(0xFFAA9E9E)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffFAFAFA),
        centerTitle: true,
        title: Text(
          "Home",
          style: GoogleFonts.sulphurPoint(
            fontSize: 18,
            color: const Color(0xFF504949),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/1.png"),
              radius: 23,
            ),
          ),
        ],
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello",
                style: GoogleFonts.sulphurPoint(
                    fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Welcome to Makeup hub.",
                style: GoogleFonts.sulphurPoint(
                    fontSize: 16, color: const Color(0xFFAA9E9E)),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        style: GoogleFonts.sulphurPoint(
                            fontSize: 17, color: Colors.black),
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 18),
                          hintText: "Search",
                          hintStyle: GoogleFonts.sulphurPoint(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                          prefixIcon: const Padding(
                            padding: EdgeInsets.only(left: 15, right: 15),
                            child: Icon(
                              CupertinoIcons.search,
                              size: 27,
                              color: Colors.black,
                            ),
                          ),
                          fillColor: const Color(0xFFFFFFFF),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: const BorderSide(
                              color: Color(0xFFF3F3F3),
                              width: 1.8,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                          color: const Color(0xFF0D2063),
                          borderRadius: BorderRadius.circular(14)),
                      child: Center(
                        child: Image.asset(
                          "assets/images/Icon.png",
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    width: 120,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Categories", //! unable to add a space between text and undeerline
                      style: GoogleFonts.sulphurPoint(
                        letterSpacing: 0.9,
                        fontSize: 15,
                        color: const Color(0xFF121212),
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                        decorationThickness: 2.0,
                      ),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: categoryname.asMap().entries.map((entry) {
                          int index = entry.key;
                          String category = entry.value;
                          Color categoryColor = categoryolors[index];
                          return SizedBox(
                            width: 70,
                            child: Text(
                              category,
                              style: GoogleFonts.sulphurPoint(
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.6,
                                fontSize: 14,
                                color: categoryColor,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const HomePageCategory(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Products",
                    style: GoogleFonts.sulphurPoint(
                        fontSize: 16,
                        letterSpacing: 1.0,
                        color: const Color(0xFF504949),
                        shadows: [
                          const Shadow(
                            color: Color(0xFF504949),
                            blurRadius: 23,
                            offset: Offset(0, 6),
                          ),
                        ],
                        fontWeight: FontWeight.w400),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See All",
                      style: GoogleFonts.sulphurPoint(
                        fontSize: 16,
                        letterSpacing: 1.0,
                        color: const Color(0xFF504949),
                      ),
                    ),
                  ),
                ],
              ),
              const PopularProducts(),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xffFFFFFF),
          elevation: 0,
          selectedFontSize: 0,
          fixedColor: Colors.black,
          unselectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.square_grid_2x2_fill,
                  ),
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.heart,
                  ),
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.bag,
                  ),
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.person,
                  ),
                ),
                label: ""),
          ]),
    );
  }
}
