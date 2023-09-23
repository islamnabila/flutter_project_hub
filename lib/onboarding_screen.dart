import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _controller = PageController();
  bool OnLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              OnLastPage = (index == 2);
            });
          },
          children: [
            Container(
              color: Colors.pink.shade50,
              child: Text("page1"),
            ),
            Container(
              color: Colors.deepPurple.shade200,
              child: Text("page2"),
            ),
            Container(
              color: Colors.green.shade200,
              child: Text("page3"),
            ),
          ],
        ),
        Align(
            alignment: Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    onTap: () {
                      _controller.jumpToPage(2);
                    },
                    child: Text("Skip")),
                SmoothPageIndicator(controller: _controller, count: 3),
                OnLastPage
                    ? GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: Duration(microseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: Text("Done"))
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: Duration(microseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: Text("Next")),
              ],
            ))
      ]),
    );
  }
}
