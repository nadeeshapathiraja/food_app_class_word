// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_app/screens/login_screen/login_screen.dart';
import 'package:food_app/screens/splash_screen/getting_started.dart';
import 'package:food_app/utils/constants.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/utils/util_functions.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        Constants.imageAssets("header.png"),
                        width: size.width,
                        fit: BoxFit.fitWidth,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const SizedBox(height: 59.0),
                            const Text(
                              "SignIn",
                              style: TextStyle(
                                color: fontColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 22.0,
                              ),
                            ),
                            const Text(
                              "Create Your Account",
                              style: TextStyle(
                                color: fontColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  SizedBox(height: 25.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              "Email",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                color: fontColor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 6.0),
                        TextField(
                          decoration: InputDecoration(
                            fillColor: kwhite,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                        ),
                        SizedBox(height: 14.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              "Phone number",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                color: fontColor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 6.0),
                        TextField(
                          decoration: InputDecoration(
                            fillColor: kwhite,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                        ),
                        SizedBox(height: 14.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              "Password",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                color: fontColor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 6.0),
                        TextField(
                          decoration: InputDecoration(
                            fillColor: kwhite,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            suffixIcon: Icon(Icons.visibility_outlined),
                          ),
                        ),
                        SizedBox(height: 21),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 60,
                            width: 400,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.amber[400],
                            ),
                            child: Center(
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                  color: fontColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already have an account? ",
                              style: TextStyle(
                                fontSize: 15.0,
                                color: greyColor,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                utilFunction.navigateTo(context, LogInScreen());
                              },
                              child: Text(
                                "SignIn",
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: fontColor,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
