// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:food_app/utils/constants.dart';
import 'package:food_app/utils/app_colors.dart';

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
      body: Container(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Stack(
              children: [
                // RotatedBox(
                //   quarterTurns: 2,
                //   child: Image.asset(
                //     Constants.imageAssets('bottom.png'),
                //     width: size.width,
                //     fit: BoxFit.fitWidth,
                //   ),
                // ),
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
            )
          ],
        ),
      ),
    );
  }
}
