import 'package:edible_herbs/config/colors.dart';
import 'package:flutter/material.dart';

enum SigninCharacter { fill, outline }

class ProductOverview extends StatefulWidget {
  final String productName;
  final String productImage;

  const ProductOverview(
      {super.key, required this.productImage, required this.productName});

  @override
  State<ProductOverview> createState() => _ProductOverviewState();
}

class _ProductOverviewState extends State<ProductOverview> {
  SigninCharacter character = SigninCharacter.fill;

  Widget bottomNavigationBar(
      {required Color iconColor,
      required Color backgroundColor,
      required Color color,
      required String title,
      required IconData iconData}) {
    return Expanded(
        child: Container(
      padding: const EdgeInsets.all(20),
      color: backgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            color: iconColor,
            size: 17,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            title,
            style: TextStyle(color: color),
          ),
        ],
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          bottomNavigationBar(
              iconColor: textColor,
              backgroundColor: Colors.lime.shade600,
              color: Colors.black,
              title: "Buy Now",
              iconData: Icons.favorite_outline),
          bottomNavigationBar(
              iconColor: textColor,
              backgroundColor: Colors.lime,
              color: Colors.black,
              title: "Add to Cart",
              iconData: Icons.shopping_cart_outlined),
        ],
      ),
      appBar: AppBar(
        backgroundColor: primaryColor,
        iconTheme: IconThemeData(color: textColor),
        title: Text("Product Overview", style: TextStyle(color: textColor)),
      ),
      body: ListView(
        children: [
          Expanded(
              child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                ListTile(
                  title: Text(widget.productName,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          letterSpacing: 1)),
                  subtitle: const Text("Rs 50/ Kg",
                      style: TextStyle(fontWeight: FontWeight.w600)),
                ),
                Container(
                  height: 250,
                  padding: const EdgeInsets.all(40),
                  child: Image(
                    image: AssetImage(widget.productImage),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  width: double.infinity,
                  child: Text("Available Options",
                      style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.w600,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 3,
                            backgroundColor: Colors.green[700],
                          ),
                          Radio(
                            activeColor: Colors.green[700],
                            onChanged: (value) {
                              setState(() {
                                character = value!;
                              });
                            },
                            value: SigninCharacter.fill,
                            groupValue: character,
                          )
                        ],
                      ),
                      const Text("Rs 50/Kg"),
                      Container(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.grey)),
                        child: Row(
                          children: [
                            Icon(
                              Icons.add,
                              size: 17,
                              color: primaryColor,
                            ),
                            Text(
                              "ADD",
                              style: TextStyle(color: primaryColor),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
          Expanded(
              child: Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "About This Product",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "In marketing, a product is an object, or system, or service made available for consumer use as of the consumer demand; it is anything that can be offered to a market to satisfy the desire or need of a customer.In retailing, products are often referred to as merchandise, and in manufacturing, products are bought as raw materials and then sold as finished goods. A service is also regarded as a type of product.",
                  style: TextStyle(fontSize: 16, color: textColor),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
