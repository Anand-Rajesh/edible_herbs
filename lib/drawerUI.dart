import 'package:edible_herbs/config/colors.dart';
import 'package:edible_herbs/my_profile/my_profile.dart';
import 'package:edible_herbs/review%20cart/review_cart.dart';
import 'package:edible_herbs/screens/home_screen.dart';
import 'package:edible_herbs/screens/notifications.dart';
import 'package:flutter/material.dart';

class DrawerUI extends StatelessWidget {
  const DrawerUI({Key? key}) : super(key: key);

  Widget listTile({IconData? icon, String? title, VoidCallback? onTap}) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        icon,
        size: 30,
      ),
      title: Text(
        title!,
        style: TextStyle(color: textColor),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      child: ListView(
        children: [
          DrawerHeader(
              child: Row(
            children: [
              const CircleAvatar(
                backgroundColor: Colors.white54,
                radius: 43,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 40,
                  child: Image(
                      image: AssetImage("assets/images/edibleherbslogo.png")),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Welcome",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    const SizedBox(
                      height: 7,
                    ),
                    SizedBox(
                      height: 30,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: const ButtonStyle(),
                        child:
                            Text("Login", style: TextStyle(color: textColor)),
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
          listTile(
            icon: Icons.home_outlined,
            title: "Home",
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ));
            },
          ),
          listTile(
            icon: Icons.shopping_cart_outlined,
            title: "view Cart",
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const Cart(),
              ));
            },
          ),
          listTile(
            icon: Icons.person_outline,
            title: "My Profile",
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const MyProfile(),
              ));
            },
          ),
          listTile(
              icon: Icons.notifications_none_outlined, title: "Notifications", onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const Notifications(),
            ));
          },),
          listTile(
            icon: Icons.star_border_outlined,
            title: "Rating and Review",
          ),
          listTile(
            icon: Icons.favorite_border_outlined,
            title: "Wishlist",
          ),
          listTile(
            icon: Icons.content_paste_outlined,
            title: "Complaints",
          ),
          listTile(
            icon: Icons.account_tree_outlined,
            title: "FAQs",
          ),
          SizedBox(
            // height: 300,
            child: Column(
              children: [
                const Text("Contact",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.call_outlined),
                      Text("+91 9856845364",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.mail_outline),
                      Text("edibleherbs12@gmail.com",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 25, bottom: 20),
                  child: SizedBox(
                    height: 25,
                    child: Text("V.1.2",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
