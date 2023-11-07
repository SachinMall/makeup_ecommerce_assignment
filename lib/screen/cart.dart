import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  var cartitems = [
    {
      "detailname": "Abhigyna Makeovers",
      "subname": "Face Care",
      "price": "₹2320/-",
      "imagepath": "assets/images/ab.jpg",
      "rating": "4.9",
      "quantity": "1",
    },
    {
      "detailname": "Makeup & styling makeovers",
      "subname": "Body Care",
      "price": "₹2000/-",
      "imagepath": "assets/images/face.jpg",
      "rating": "4.8",
      "quantity": "1",
    },
  ];
  int quantity = 1;

  void incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  void decrementQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

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
          "Cart",
          style: GoogleFonts.sulphurPoint(
            letterSpacing: 1.0,
            fontSize: 18,
            color: const Color(0xff504949),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Color(0xff504949),
              size: 30,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Delivery Address",
                  style: GoogleFonts.sulphurPoint(
                      fontSize: 17,
                      color: const Color(0xff504949),
                      letterSpacing: 1.0),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.edit,
                    color: Colors.black,
                    size: 25,
                  ),
                ),
              ],
            ),
            Container(
              height: 120,
              width: Get.width,
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(16)),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(14),
                    child: Image.asset(
                      "assets/images/map.jpg",
                      fit: BoxFit.fill,
                      height: 92,
                      width: 120,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Marina , bhanu towers,\n12/8AB",
                          maxLines: 2,
                          style: GoogleFonts.inter(
                              fontSize: 16, color: const Color(0xff1D1E20)),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Cheenai, India",
                          style: GoogleFonts.inter(
                              fontSize: 12, color: const Color(0xffAA9E9E)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Payment Method",
                  style: GoogleFonts.sulphurPoint(
                      fontSize: 17,
                      color: const Color(0xff504949),
                      letterSpacing: 1.0),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.edit,
                    color: Colors.black,
                    size: 25,
                  ),
                ),
              ],
            ),
            Container(
              height: 100,
              width: Get.width,
              margin: const EdgeInsets.all(6),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(16)),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(14),
                    child: Image.asset(
                      "assets/images/creditcard.jpg",
                      fit: BoxFit.fill,
                      height: 52,
                      width: 80,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Credit Card",
                          maxLines: 2,
                          style: GoogleFonts.sulphurPoint(
                              fontSize: 15, color: Colors.black),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "2188 4829 4721 8419",
                          style: GoogleFonts.sulphurPoint(
                              fontSize: 15,
                              letterSpacing: 0.8,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff504949)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Text(
              "My Cart",
              style: GoogleFonts.sulphurPoint(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff504949),
                  letterSpacing: 1.0),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 300,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: cartitems.length,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(6),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(14),
                          child: Image.asset(
                            cartitems[index]["imagepath"]!,
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
                                cartitems[index]["detailname"].toString(),
                                style: GoogleFonts.sulphurPoint(
                                    fontSize: 16,
                                    color: const Color(0xff504949),
                                    letterSpacing: 1.0,
                                    fontWeight: FontWeight.w600),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                cartitems[index]["subname"].toString(),
                                style: GoogleFonts.sulphurPoint(
                                  fontSize: 14,
                                  color: const Color(0xffAA9E9E),
                                  letterSpacing: 1.0,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                cartitems[index]["price"]!,
                                style: GoogleFonts.sulphurPoint(
                                    fontSize: 18,
                                    color: const Color(0xff2D2D2D),
                                    letterSpacing: 1.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 50),
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              color: const Color(0xffF5F5F5),
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  icon: const Icon(
                                    Icons.remove,
                                    color: Color(0xffDED7D7),
                                  ),
                                  onPressed: decrementQuantity,
                                ),
                                Text(quantity.toString(),
                                    style: GoogleFonts.sulphurPoint(
                                      fontSize: 15,
                                      color: const Color(0xff2D2D2D),
                                    )),
                                IconButton(
                                  icon: const Icon(
                                    Icons.add,
                                    color: Color(0xffDED7D7),
                                  ),
                                  onPressed: incrementQuantity,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return const SizedBox(
                height: 150,
                child: Center(
                  child: Text("Under Maintainence"),
                ),
              );
            },
          );
        },
        child: Container(
          height: 50,
          width: Get.width,
          margin: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: const Color(0xff0D2063),
            borderRadius: BorderRadius.circular(26),
          ),
          child: Center(
            child: Text(
              "CHECKOUT",
              style: GoogleFonts.poppins(
                fontSize: 17,
                letterSpacing: 1.0,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
