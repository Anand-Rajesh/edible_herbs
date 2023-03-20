import 'package:edible_herbs/config/colors.dart';
import 'package:flutter/material.dart';

class SingleItem extends StatelessWidget {
  const SingleItem(
      {Key? key, required this.image, required this.text, required this.isBool})
      : super(key: key);
  final bool isBool;
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Expanded(
                  child: SizedBox(
                height: 100,
                child: Image.asset(image),
              )),
              Expanded(
                  child: SizedBox(
                height: 100,
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          text,
                          style: TextStyle(
                              color: textColor, fontWeight: FontWeight.bold),
                        ),
                        const Text("50Rs /1Kg",
                            style: TextStyle(
                              color: Colors.grey,
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 15),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      height: 35,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: [
                          const Expanded(
                            child: Text(
                              "1Kg",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Center(
                            child: Icon(Icons.arrow_drop_down,
                                size: 20, color: primaryColor),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )),
              Expanded(
                child: Container(
                  padding: isBool == false
                      ? const EdgeInsets.symmetric(horizontal: 15, vertical: 32)
                      : const EdgeInsets.only(left: 15, right: 15),
                  height: 100,
                  child: isBool == false
                      ? Container(
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.add,
                                  color: primaryColor,
                                  size: 20,
                                ),
                                Text("Add",
                                    style: TextStyle(
                                      color: primaryColor,
                                    ))
                              ],
                            ),
                          ),
                        )
                      : Column(
                          children: [
                            const Icon(
                              Icons.delete_forever,
                              size: 30,
                              color: Colors.black54,
                            ),
                            const SizedBox(height: 10),
                            Container(
                              height: 30,
                              width: 50,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Center(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.add,
                                      color: primaryColor,
                                      size: 20,
                                    ),
                                    Text("Add",
                                        style: TextStyle(
                                          color: primaryColor,
                                        ))
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                ),
              ),
            ],
          ),
        ),
        isBool == false
            ? Container()
            : const Divider(
                color: Colors.black45,
              )
      ],
    );
  }
}
