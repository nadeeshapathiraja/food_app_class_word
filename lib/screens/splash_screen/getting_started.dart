// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:food_app/screens/login_screen/login_screen.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/utils/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';

class GettingStarted extends StatefulWidget {
  const GettingStarted({Key? key}) : super(key: key);

  @override
  _GettingStartedState createState() => _GettingStartedState();
}

class _GettingStartedState extends State<GettingStarted> {
  CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    List<Widget> list = [
      const SliderItem(
        imgName: "popcorn.png",
        title: "Choose A Tasty Dish",
        discription: "Order anything you want from your\n Favorite restaurant.",
      ),
      const SliderItem(
        imgName: "money.png",
        title: "Easy Payment",
        discription:
            "Payment made easy through debit\n card, credit card  & more ways to pay\n for your food",
      ),
      const SliderItem(
        imgName: "restaurant.png",
        title: "Enjoy the Taste!",
        discription:
            "Healthy eating means eating a variety\n of foods that give you the nutrients you\n need to maintain your health.",
      ),
    ];
    int _current = 0;
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CarouselSlider(
              carouselController: carouselController,
              options: CarouselOptions(
                  height: size.height / 2,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
              items: list.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [i],
                      ),
                    );
                  },
                );
              }).toList(),
            ),

            //getting stated screen dots
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: list.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => carouselController.animateToPage(entry.key),
                  child: Container(
                    width: 12.0,
                    height: 12.0,
                    margin: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            _current == entry.key ? primaryColor : greyColor),
                  ),
                );
              }).toList(),
            ),
            BottomSection(
              size: size,
              ontap: () => carouselController.nextPage(),
            ),
          ],
        ),
      ),
    );
  }
}

//Slider Items
class SliderItem extends StatelessWidget {
  const SliderItem({
    Key? key,
    required this.imgName,
    required this.title,
    required this.discription,
  }) : super(key: key);

  final String imgName;
  final String title;
  final String discription;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          Constants.imageAssets(imgName),
        ),
        const SizedBox(height: 37.0),
        Text(
          title,
          style: const TextStyle(
            fontSize: 22.0,
            color: fontColor,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 5.0),
        Text(
          discription,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 67.0),
      ],
    );
  }
}

class BottomSection extends StatelessWidget {
  const BottomSection({
    Key? key,
    required this.size,
    required this.ontap,
  }) : super(key: key);

  final Size size;
  final Function() ontap;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Image.asset(
            Constants.imageAssets(
              "bottom.png",
            ),
            width: size.width,
            fit: BoxFit.fitWidth,
          ),
          Positioned(
            bottom: 39.0,
            right: 43.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: ontap,
                  child: const Text(
                    "Next",
                    style: TextStyle(
                      color: fontColor,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: kwhite,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LogInScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    "Skip",
                    style: TextStyle(
                      color: fontColor,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
