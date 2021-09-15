// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_app/screens/splash_screen/getting_started.dart';
import 'package:food_app/utils/constants.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/utils/util_functions.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
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
                              "Login",
                              style: TextStyle(
                                color: fontColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 22.0,
                              ),
                            ),
                            const Text(
                              "Access Account",
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
                  Positioned(
                    top: 189.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Image.asset(
                            Constants.imageAssets("google.png"),
                          ),
                        ),
                        SizedBox(width: 15.0),
                        InkWell(
                          onTap: () {},
                          child: Image.asset(
                            Constants.imageAssets("fb.png"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    "or Login with Email",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      color: greyColor,
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
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
                        // ElevatedButton(
                        //   onPressed: () {},

                        //   child: Container(
                        //     color: primaryColor,
                        //     width: 300.0,
                        //     height: 60.0,
                        //     alignment: Alignment.center,
                        //     child: Text("Sign In"),
                        //   ),
                        // ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 60,
                            width: 400,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.amber[400],
                            ),
                            child: Center(
                              child: Text(
                                "Sign In",
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
                              "Don’t have an account? ",
                              style: TextStyle(
                                fontSize: 15.0,
                                color: greyColor,
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Text(
                                "Register",
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
