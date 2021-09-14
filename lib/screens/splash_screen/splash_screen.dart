// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_app/screens/splash_screen/getting_started.dart';
import 'package:animate_do/animate_do.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/utils/constants.dart';
import 'package:food_app/utils/util_functions.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    Future.delayed(
      const Duration(seconds: 5),
      () {
        utilFunction.navigateTo(context, GettingStarted());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      // ignore: sized_box_for_whitespace
      body: Container(
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Pulse(
              duration: const Duration(seconds: 4),
              child: Image.asset(Constants.imageAssets('food.png')),
            ),
            const SizedBox(height: 10),
            const Text(
              "No waiting for food",
              style: TextStyle(
                fontSize: 14.0,
                color: Color(0xff838383),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
