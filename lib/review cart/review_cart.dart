import 'package:edible_herbs/config/colors.dart';
import 'package:flutter/material.dart';
import '../widgets/singleItem.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ListTile(
        title: const Text("Total Amount"),
        subtitle: const Text("Rs 200.00",
            style: TextStyle(
              color: Colors.redAccent,
            )),
        trailing: SizedBox(
          width: 160,
          child: MaterialButton(
              color: primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              onPressed: () {},
              child: const Text("Submit")),
        ),
      ),
      appBar: AppBar(
        title: Text(
          "Review Cart",
          style: TextStyle(
            color: textColor,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: primaryColor,
      ),
      body: ListView(
        children: const [
          SizedBox(height: 10),
          SingleItem(
            image: "assets/images/spinach.png",
            text: "Spinach",
            isBool: true,
          ),
          SingleItem(
            image: 'assets/images/apple.png',
            text: "Apple",
            isBool: true,
          ),
          SingleItem(
            image: "assets/images/cashew.png",
            text: "Cashew",
            isBool: true,
          ),
          SingleItem(
            image: "assets/images/apricot.png",
            text: "Apricot",
            isBool: true,
          ),
        ],
      ),
    );
  }
}
