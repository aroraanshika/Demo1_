import 'package:flutter/material.dart';

class SliderCard extends StatefulWidget {
  const SliderCard({Key? key}) : super(key: key);

  @override
  _SliderCardState createState() => _SliderCardState();
}

class _SliderCardState extends State<SliderCard> {
  late final PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  List<String> items = [
    'hello',
    'world',
    'flutter',
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double containerHeight = screenWidth * 0.2;

    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            controller: pageController,
            itemBuilder: (_, index) {
              return AnimatedBuilder(
                animation: pageController,
                builder: (ctx, child) {
                  return child!;
                },
                child: Container(
                  height: containerHeight,
                  color: Colors.amberAccent,
                ),
              );
            },
            itemCount: items.length,
          ),
        ),
      ],
    );
  }
}
