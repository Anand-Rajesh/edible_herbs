import 'package:edible_herbs/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/login page.jpg"),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 400,
              width: double.infinity,
              // color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("Sign in to continue",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                                color: Colors.white54,
                                blurRadius: 5,
                                offset: Offset.zero)
                          ])),
                  const Text("Edible Herbs",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 50,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                                color: Colors.green,
                                blurRadius: 5,
                                offset: Offset.zero)
                          ])),
                  SignInButton(
                    Buttons.Google,
                    text: "Sign up with Google",
                    onPressed: () {},
                  ),
                  SignInButton(
                    Buttons.Apple,
                    text: "Sign up with Apple",
                    onPressed: () {},
                  ),
                  Column(
                    children: [
                      Text("By signing in you are agreeing to our",
                          style: TextStyle(
                              fontSize: 12, color: Colors.grey.shade800)),
                      Text("Terms and privacy and policy",
                          style: TextStyle(
                              fontSize: 12, color: Colors.grey.shade800))
                    ],
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ));
                      },
                      child: Text(
                        "skip",
                        style: TextStyle(
                            letterSpacing: 1,
                            color: Colors.grey.shade800,
                            fontSize: 11.85,
                            decoration: TextDecoration.underline),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
