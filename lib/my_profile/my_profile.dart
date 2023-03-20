import 'package:edible_herbs/drawerUI.dart';
import 'package:edible_herbs/auth/login_page.dart';
import 'package:flutter/material.dart';
import '../config/colors.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  Widget listTile(
      {required String title, required IconData icon, VoidCallback? onTap}) {
    return Column(
      children: [
        const Divider(
          height: 1,
        ),
        ListTile(
          leading: Icon(icon),
          title: Text(title),
          onTap: onTap,
          trailing: const Icon(Icons.arrow_forward_ios),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0.0,
        title: Text("My Profile",
            style: TextStyle(color: textColor, fontSize: 18)),
      ),
      drawer: const Drawer(child: DrawerUI()),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 100,
                color: primaryColor,
              ),
              Container(
                height: 548,
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          // width: 180,
                          height: 80,
                          padding: const EdgeInsets.only(left: 20),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "User Name",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: textColor),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text("email@gmail.com",
                                    style: TextStyle(
                                      color: textColor,
                                    )),
                              ],
                            ),
                            CircleAvatar(
                              radius: 15,
                              backgroundColor: primaryColor,
                              child: CircleAvatar(
                                radius: 12,
                                backgroundColor: Colors.white,
                                child: Icon(Icons.edit, color: primaryColor),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    listTile(title: "My Orders", icon: Icons.shop_outlined),
                    listTile(
                        title: "My Delivery Address",
                        icon: Icons.location_on_outlined),
                    listTile(
                        title: "Refer To Your Friends",
                        icon: Icons.person_outline),
                    listTile(
                        title: "Terms & Conditions",
                        icon: Icons.file_copy_outlined),
                    listTile(
                        title: "Privacy policy", icon: Icons.policy_outlined),
                    listTile(title: "About", icon: Icons.addchart_outlined),
                    listTile(
                        title: "Log Out",
                        icon: Icons.exit_to_app_outlined,
                        onTap: () {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ));
                        })
                  ],
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 40, left: 30),
            child: CircleAvatar(
              foregroundColor: Colors.white,
              foregroundImage: AssetImage("assets/images/edibleherbslogo.png"),
              radius: 50,
              backgroundColor: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
