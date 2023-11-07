import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task1/screen/popular_details_page.dart';

class PopularProducts extends StatefulWidget {
  const PopularProducts({super.key});

  @override
  State<PopularProducts> createState() => _PopularProductsState();
}

class _PopularProductsState extends State<PopularProducts> {
  List<Map<String, dynamic>> products = [
    {
      "name": "Makeup and styling\nmakeovers",
      "detailname": "Makeup and styling makeovers",
      "subname": "Face Care",
      "price": "₹2000/-",
      "imagepath": "assets/images/face.jpg",
      "rating": "4.8"
    },
    {
      "name": "Eye Makeovers",
      "detailname": "Eye Makeovers",
      "subname": "Eye Care",
      "price": "₹2000/-",
      "imagepath": "assets/images/eye.jpg",
      "rating": "4.9",
    },
    {
      "name": "Hair Makeover",
      "detailname": "Hair Makeover",
      "subname": "Hair Care",
      "price": "₹2000/-",
      "imagepath": "assets/images/hair.jpg",
      "rating": "4.5",
    }
  ];
  void _onItemTap(int index) {
    final selecteditem = products[index];
    Get.to(() => const PopularDetails(), arguments: selecteditem);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: products.length,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => _onItemTap(index),
            child: Container(
              margin: const EdgeInsets.all(6),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(14),
                    child: Image.asset(
                      products[index]["imagepath"],
                      fit: BoxFit.fitHeight,
                      height: 106,
                      width: 107,
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          products[index]["name"].toString(),
                          style: GoogleFonts.sulphurPoint(
                              fontSize: 16,
                              color: const Color(0xff504949),
                              letterSpacing: 1.0,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          products[index]["subname"].toString(),
                          style: GoogleFonts.sulphurPoint(
                            fontSize: 14,
                            color: const Color(0xffAA9E9E),
                            letterSpacing: 1.0,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          products[index]["price"],
                          style: GoogleFonts.sulphurPoint(
                              fontSize: 18,
                              color: const Color(0xff2D2D2D),
                              letterSpacing: 1.0,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    products[index]["rating"],
                    style: GoogleFonts.sulphurPoint(
                        fontSize: 18,
                        color: Colors.black,
                        letterSpacing: 1.0,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 16,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
