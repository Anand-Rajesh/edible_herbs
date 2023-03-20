import 'package:edible_herbs/widgets/singleItem.dart';
import 'package:edible_herbs/config/colors.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text("Search"),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.sort),
          )
        ],
      ),
      body: ListView(
        children: [
          const ListTile(
            title: Text("Items",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
          ),
          Container(
            height: 52,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none),
                  fillColor: Colors.grey.shade400,
                  filled: true,
                  hintText: "Search for Products",
                  suffixIcon: const Icon(Icons.search)),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const SingleItem(
            image: "assets/images/spinach.png",
            text: "Spinach",
            isBool: false,
          ),
          const SingleItem(
            image: 'assets/images/apple.png',
            text: "Apple",
            isBool: false,
          ),
          const SingleItem(
            image: "assets/images/cashew.png",
            text: "Cashew",
            isBool: false,
          ),
          const SingleItem(
            image: "assets/images/apricot.png",
            text: "Apricot",
            isBool: false,
          )
        ],
      ),
    );
  }
}
