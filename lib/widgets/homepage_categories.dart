import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task1/screen/package_details.dart';

class HomePageCategory extends StatefulWidget {
  const HomePageCategory({super.key});

  @override
  State<HomePageCategory> createState() => _HomePageCategoryState();
}

class _HomePageCategoryState extends State<HomePageCategory> {
  List<Map<String, dynamic>> categorydetails = [
    {
      "name": "Abhigyna\nMakeovers",
      "detailname": "Abhigyna Makeovers",
      "price": "₹2320/-",
      "imagepath": "assets/images/ab.jpg",
      "rating": "4.9"
    },
    {
      "name": "Luxe Hairstyling\nand makeup",
      "detailname": "Luxe Hairstyling and makeup",
      "price": "₹1950/-",
      "imagepath": "assets/images/abc.jpg",
      "rating": "4.5",
    },
    {
      "name": "Sanara's\nMakeover",
      "detailname": "Sanara's Makeover",
      "price": "₹1950/-",
      "imagepath": "assets/images/abcd.jpg",
      "rating": "4.5",
    }
  ];

  List<bool> isFavoritedList = [false, true, false];

  void _onItemTap(int index) {
    final selecteditem = categorydetails[index];
    Get.to(() => const PackageDetails(), arguments: selecteditem);
  }

  @override
  Widget build(BuildContext context) {
    // double screenwidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 280,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: categorydetails.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => _onItemTap(index),
            child: Container(
              width: 200,
              margin: const EdgeInsets.all(4),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(14),
                        child: Image.asset(
                          categorydetails[index]["imagepath"]!,
                          fit: BoxFit.fitHeight,
                          height: 175,
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        child: IconButton(
                          icon: Icon(
                            isFavoritedList[index]
                                ? Icons.favorite
                                : Icons.favorite,
                            size: 28,
                            color: isFavoritedList[index]
                                ? Colors.amber
                                : Colors.white,
                          ),
                          onPressed: () {
                            setState(() {
                              isFavoritedList[index] = !isFavoritedList[index];
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        categorydetails[index]["name"].toString(),
                        style: GoogleFonts.sulphurPoint(
                          fontSize: 14,
                          letterSpacing: 1.0,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF504949),
                        ),
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Icon(
                            Icons.star,
                            color: Color(0xffF6BB35),
                            size: 18,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            categorydetails[index]["rating"],
                            style: GoogleFonts.sulphurPoint(
                                fontSize: 14, color: Colors.black),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    categorydetails[index]["price"],
                    style: GoogleFonts.sulphurPoint(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.0),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
