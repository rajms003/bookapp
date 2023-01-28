import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ComingBook extends StatelessWidget {
  ComingBook({super.key});

  final upcoming = [
    'assets/images/upcoming1.jpg',
    'assets/images/upcoming2.jpg',
    'assets/images/upcoming3.jpg',
  ];

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 10,
      ),
      height: 120,
      child: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: upcoming
                .map((e) => Stack(
                      fit: StackFit.expand,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                e,
                                fit: BoxFit.cover,
                              )),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Colors.black,
                                    Colors.black45,
                                    Colors.black12,
                                    Colors.black.withOpacity(0),
                                  ])),
                        ),
                        const Positioned(
                          left: 30,
                          top: 20,
                          child: Text('Upcoming books',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                          ),),
                        ),
                        const Positioned(
                          left: 30,
                          top: 55,
                          child: Text('30+ new book coming with various \ngames are waiting for u',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),),
                        ),
                      ],
                    ))
                .toList(),
          ),
          Positioned(
            left: 30,
            bottom: 12,
            child: SmoothPageIndicator(
                controller: _pageController, 
                count: upcoming.length,
                effect: const ExpandingDotsEffect(
                  expansionFactor: 4,
                  dotWidth: 8,
                  dotHeight: 8,
                  spacing: 4,
                  activeDotColor: Colors.white
                ),
                onDotClicked: ((index) => {
                  _pageController.animateToPage(
                    index, 
                    duration: const Duration(milliseconds: 300), 
                    curve: Curves.easeInOut)
                }),
                ),
          ),
        ],
      ),
    );
  }
}
