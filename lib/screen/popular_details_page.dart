import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task1/screen/cart.dart';

class PopularDetails extends StatefulWidget {
  const PopularDetails({super.key});

  @override
  State<PopularDetails> createState() => _PopularDetailsState();
}

class _PopularDetailsState extends State<PopularDetails> {
  bool isFavorite = false;
  final selecteditem = Get.arguments as Map<String, dynamic>;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xffFAFAFA),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xff504949),
            size: 30,
          ),
        ),
        title: Text(
          "Package Details",
          style: GoogleFonts.sulphurPoint(
            letterSpacing: 1.0,
            fontSize: 18,
            color: const Color(0xff504949),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: isFavorite ? Colors.amber : Colors.black,
              size: 30,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 14),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(14),
                    child: Image.asset(
                      selecteditem["imagepath"]!,
                      fit: BoxFit.fitHeight,
                      height: 332,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      RatingBar.builder(
                        itemSize: 24,
                        initialRating: 5,
                        allowHalfRating: true,
                        minRating: 1,
                        direction: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Color(0xffF6BB35),
                        ),
                        onRatingUpdate: (rating) {},
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        selecteditem["rating"]!,
                        style: GoogleFonts.sulphurPoint(
                            fontSize: 14, color: Colors.black),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    selecteditem["detailname"].toString(),
                    style: GoogleFonts.sulphurPoint(
                      fontSize: 15,
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.w300,
                      color: const Color(0xFF504949),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Base Price",
                    style: GoogleFonts.sulphurPoint(
                      fontSize: 14,
                      letterSpacing: 1.0,
                      color: const Color(0xffAA9E9E),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        selecteditem["price"]!,
                        style: GoogleFonts.sulphurPoint(
                            fontSize: 16,
                            color: const Color(0xff2D2D2D),
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1.0),
                      ),
                      Text(
                        "with tax",
                        style: GoogleFonts.sulphurPoint(
                            fontSize: 15,
                            color: const Color(0xffAA9E9E),
                            letterSpacing: 1.0),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Description",
                    style: GoogleFonts.sulphurPoint(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff504949),
                        letterSpacing: 1.0),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "The Abhigyna makeovers were currently the popular makeovers in India. Our company will provide services to your doorstep.",
                    maxLines: 3,
                    style: GoogleFonts.sulphurPoint(
                      fontSize: 16,
                      letterSpacing: 0.4,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const IconWithText(CupertinoIcons.phone, "Call"),
                      const IconWithText(CupertinoIcons.location, "Map"),
                      const IconWithText(CupertinoIcons.share, "Share"),
                      const SizedBox(width: 16),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 35,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                  color: const Color(0xff0D2063), width: 1.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.star_border,
                                  color: Color(0xff0D2063),
                                  size: 20,
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  selecteditem["rating"]!,
                                  style: GoogleFonts.dmSans(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xff0D2063),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            "5k + ratings",
                            style: GoogleFonts.dmSans(
                              fontSize: 11,
                              color: const Color(0xff0D2063),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 65,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              border: Border.all(
                                color: const Color(0xffF2F2F5),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset("assets/images/offer.png",
                                        fit: BoxFit.contain, height: 35),
                                    const SizedBox(width: 10),
                                    Text(
                                      "50% off",
                                      style: GoogleFonts.dmSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xff1C1C28),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "use code FREE50",
                                  style: GoogleFonts.dmSans(
                                      letterSpacing: 0.4,
                                      fontSize: 12,
                                      color: const Color(0xff1C1C28)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 65,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              border: Border.all(
                                color: const Color(0xffF2F2F5),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset("assets/images/offer.png",
                                        fit: BoxFit.contain, height: 35),
                                    const SizedBox(width: 5),
                                    Text(
                                      "60% off on Debit Card",
                                      style: GoogleFonts.dmSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xff1C1C28),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "No coupon required",
                                  style: GoogleFonts.dmSans(
                                      letterSpacing: 0.4,
                                      fontSize: 12,
                                      color: const Color(0xff1C1C28)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const CartPage());
                    },
                    child: Container(
                      height: 50,
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: const Color(0xff0D2063),
                        borderRadius: BorderRadius.circular(26),
                      ),
                      child: Center(
                        child: Text(
                          "ADD TO CART",
                          style: GoogleFonts.poppins(
                              fontSize: 17,
                              letterSpacing: 1.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class IconWithText extends StatelessWidget {
  final IconData icon;
  final String label;

  const IconWithText(this.icon, this.label, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 23,
          color: const Color(0xff1C1C28),
        ),
        const SizedBox(height: 5),
        Text(
          label,
          style: GoogleFonts.dmSans(
            fontSize: 12,
            letterSpacing: 0.4,
            color: const Color(0xff1C1C28),
          ),
        ),
      ],
    );
  }
}
