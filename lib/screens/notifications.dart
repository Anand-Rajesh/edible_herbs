import 'package:flutter/material.dart';
import '../config/colors.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text("Notifications",
            style: TextStyle(fontWeight: FontWeight.w600, color: textColor)),
      ),
      body: const Center(
          child: Text(
        "You have no new Notifications",
        style: TextStyle(color: Colors.grey),
      )),
    );
  }
}
