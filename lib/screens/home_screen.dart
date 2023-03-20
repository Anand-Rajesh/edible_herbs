import 'package:edible_herbs/config/colors.dart';
import 'package:edible_herbs/screens/product_overview/product_overview.dart';
import 'package:edible_herbs/single_products.dart';
import 'package:flutter/material.dart';
import 'package:edible_herbs/drawerUI.dart';

import '../Search/search.dart';
// import 'package:edible_herbs/single_products.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget productTileVeg(context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SingleProduct(
              productName: "Spinach",
              productImage: "assets/images/spinach.png",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) =>
                      const ProductOverview(
                        productImage: "assets/images/spinach.png",
                        productName: "Spinach",
                      )),
                );
              }),
          SingleProduct(
              productName: "Tomatoes",
              productImage: "assets/images/tomato.png",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) =>
                      const ProductOverview(
                        productName: "Tomatoes",
                        productImage: "assets/images/tomato.png",
                      )),
                );
              }),
          SingleProduct(
              productName: "Carrots",
              productImage: "assets/images/carrots.png",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) =>
                      const ProductOverview(
                        productImage: "assets/images/carrots.png",
                        productName: "Carrots",
                      )),
                );
              }),
          SingleProduct(
              productName: "Onion ",
              productImage: "assets/images/onion.png",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) =>
                      const ProductOverview(
                        productName: "Onion ",
                        productImage: "assets/images/onion.png",
                      )),
                );
              }),
          SingleProduct(
              productName: "Brinjal",
              productImage: "assets/images/brinjal.png",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) =>
                      const ProductOverview(
                        productImage: "assets/images/brinjal.png",
                        productName: "Brinjal",
                      )),
                );
              }),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.arrow_forward_ios, color: Colors.black),
            ),
          )
        ],
      ),
    );
  }

  Widget productTileFruits(context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SingleProduct(
              productName: "Apple",
              productImage: "assets/images/apple.png",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) =>
                      const ProductOverview(
                        productImage: "assets/images/apple.png",
                        productName: "Apple",
                      )),
                );
              }),
          SingleProduct(
              productName: "Mango",
              productImage: "assets/images/mango.png",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) =>
                      const ProductOverview(
                        productName: "Mango",
                        productImage: "assets/images/mango.png",
                      )),
                );
              }),
          SingleProduct(
              productName: "pomegranate ",
              productImage: "assets/images/pomegranate.png",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) =>
                      const ProductOverview(
                        productImage: "assets/images/pomegranate.png",
                        productName: "pomegranate ",
                      )),
                );
              }),
          SingleProduct(
              productName: "Peach",
              productImage: "assets/images/peach.png",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) =>
                      const ProductOverview(
                        productName: "Peach",
                        productImage: "assets/images/peach.png",
                      )),
                );
              }),
          SingleProduct(
              productName: "Grapes",
              productImage: "assets/images/grapes.png",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) =>
                      const ProductOverview(
                        productImage: "assets/images/grapes.png",
                        productName: "Grapes",
                      )),
                );
              }),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.arrow_forward_ios, color: Colors.black),
            ),
          )
        ],
      ),
    );
  }

  Widget productTileOthers(context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SingleProduct(
              productName: "Groundnuts",
              productImage: "assets/images/groundnuts.png",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) =>
                      const ProductOverview(
                        productName: "Groundnuts",
                        productImage: "assets/images/groundnuts.png",
                      )),
                );
              }),
          SingleProduct(
              productName: "Dates",
              productImage: "assets/images/dates.png",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) =>
                      const ProductOverview(
                        productImage: "assets/images/dates.png",
                        productName: "Dates",
                      )),
                );
              }),
          SingleProduct(
              productName: "Cashew",
              productImage: "assets/images/cashew.png",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) =>
                      const ProductOverview(
                        productName: "Cashew",
                        productImage: "assets/images/cashew.png",
                      )),
                );
              }),
          SingleProduct(
              productName: "Dried Apricot",
              productImage: "assets/images/apricot.png",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) =>
                      const ProductOverview(
                        productImage: "assets/images/apricot.png",
                        productName: "Dried Apricot",
                      )),
                );
              }),
          SingleProduct(
              productName: "Pistachio",
              productImage: "assets/images/pista.png",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) =>
                      const ProductOverview(
                        productName: "Pistachio",
                        productImage: "assets/images/pista.png",
                      )),
                );
              }),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.arrow_forward_ios, color: Colors.black),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        drawer: const Drawer(
          child: DrawerUI(),
        ),
        appBar: AppBar(
          iconTheme: IconThemeData(color: textColor),
          title: Text("Home",
              style: TextStyle(color: textColor, fontWeight: FontWeight.bold)),
          backgroundColor: primaryColor,
          actions: [
            IconButton(
                onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Search(),));},
                icon: Icon(
                  Icons.search,
                  color: textColor,
                  size: 24,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.camera_alt,
                  color: textColor,
                  size: 22,
                )),
            const Padding(padding: EdgeInsets.only(left: 10)),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: ListView(
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/homescreen ad.jpg")),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 165),
                              child: Container(
                                  height: 40,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      color: Colors.lightGreen.shade300
                                          .withOpacity(0.9),
                                      borderRadius: const BorderRadius.only(
                                          bottomRight: Radius.circular(50),
                                          bottomLeft: Radius.circular(50))),
                                  child: const Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text(
                                      "Edible Herbs",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          shadows: [
                                            Shadow(
                                                color: Colors.black12,
                                                offset: Offset(3, 3),
                                                blurRadius: 10)
                                          ]),
                                    ),
                                  )),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              " Want best prices? Look no further...",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  backgroundColor: Colors.grey.withOpacity(0.7),
                                  fontStyle: FontStyle.italic),
                            )
                          ],
                        )),
                    const Expanded(child: SizedBox())
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Vegetables",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17)),
                    TextButton(
                      child: Text("View all",
                          style: TextStyle(color: Colors.blueGrey.shade900)),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              productTileVeg(context),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Fruits",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17)),
                    TextButton(
                      child: Text("View all",
                          style: TextStyle(color: Colors.blueGrey.shade900)),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              productTileFruits(context),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(" Others ",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17)),
                    TextButton(
                      child: Text("View all",
                          style: TextStyle(color: Colors.blueGrey.shade900)),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              productTileOthers(context)
            ],
          ),
        ));
  }
}
