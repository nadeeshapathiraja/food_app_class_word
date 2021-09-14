// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/utils/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';

class GettingStarted extends StatefulWidget {
  const GettingStarted({Key? key}) : super(key: key);

  @override
  _GettingStartedState createState() => _GettingStartedState();
}

class _GettingStartedState extends State<GettingStarted> {
  CarouselController buttonCarouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    List list = [1, 2, 3];
    int _current = 0;
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CarouselSlider(
              options: CarouselOptions(height: size.height / 2),
              items: list.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      child: Column(
                        children: [
                          Image.asset(
                            Constants.imageAssets("popcorn.png"),
                          ),
                          const SizedBox(height: 37.0),
                          const Text(
                            "Choose A Tasty Dish",
                            style: TextStyle(
                              fontSize: 22.0,
                              color: fontColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          const Text(
                            "Order anything you want from your\n Favorite restaurant.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(height: 67.0),
                          //getting stated screen dots
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: list.asMap().entries.map((entry) {
                              return GestureDetector(
                                onTap: () => buttonCarouselController
                                    .animateToPage(entry.key),
                                child: Container(
                                  width: 12.0,
                                  height: 12.0,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 8.0, horizontal: 4.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: (Theme.of(context).brightness ==
                                                  Brightness.dark
                                              ? Colors.white
                                              : Colors.black)
                                          .withOpacity(_current == entry.key
                                              ? 0.9
                                              : 0.4)),
                                ),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            BottomSection(size: size),
          ],
        ),
      ),
    );
  }
}

class BottomSection extends StatelessWidget {
  const BottomSection({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

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
                  onPressed: () {},
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
                  onPressed: () {},
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
