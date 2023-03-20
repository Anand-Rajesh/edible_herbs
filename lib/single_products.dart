import 'package:edible_herbs/config/colors.dart';
import 'package:edible_herbs/screens/product_overview/product_overview.dart';
import 'package:flutter/material.dart';

class SingleProduct extends StatelessWidget {
  final String productImage;

  final String productName;

  final Function onTap;

  const SingleProduct(
      {super.key, required this.productName,
      required this.productImage,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) =>  ProductOverview(productImage: productImage,productName:productName ,)),
              );
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 7),
              height: 210,
              width: 160,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(child: Image(image: AssetImage(productImage))),
                  Expanded(
                      child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(productName,
                            style: TextStyle(
                                color: textColor, fontWeight: FontWeight.bold)),
                        const Text(
                          "50Rs/1kg",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w600),
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Container(
                              height: 30,
                              width: 50,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text(
                                    "50 gm",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Icon(
                                    Icons.arrow_drop_down,
                                    size: 12,
                                    color: Colors.amber.shade400,
                                  )
                                ],
                              ),
                            )),
                            const SizedBox(
                              width: 5,
                            ),
                            Expanded(
                                child: Container(
                              height: 30,
                              width: 50,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Expanded(
                                      child: Icon(Icons.remove,
                                          size: 15,
                                          color: Colors.amber.shade400)),
                                  const Center(
                                    child: Expanded(
                                        child: Text(
                                      "1",
                                      style: TextStyle(fontSize: 15),
                                    )),
                                  ),
                                  Expanded(
                                      child: Icon(
                                    Icons.add,
                                    size: 15,
                                    color: Colors.amber.shade400,
                                  ))
                                ],
                              ),
                            ))
                          ],
                        )
                      ],
                    ),
                  )),
                  const SizedBox(
                    height: 7,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
