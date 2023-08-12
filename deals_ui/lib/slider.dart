import 'package:flutter/material.dart';

class MyCarouselSlider extends StatefulWidget {
  const MyCarouselSlider({super.key});

  @override
  State<MyCarouselSlider> createState() => _MyCarouselSliderState();
}

class _MyCarouselSliderState extends State<MyCarouselSlider>
    with TickerProviderStateMixin {
  List<String> texts = [
    "Get up to 20% off",
    "Get up to 20% off",
    "Get up to 20% off",
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double Sliderheight = screenHeight * 0.25;

    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 30),
          Container(
            height: Sliderheight,
            width: MediaQuery.of(context).size.width,
            child: PageView.builder(
              itemCount: texts.length,
              physics: BouncingScrollPhysics(),
              controller: PageController(initialPage: 0, viewportFraction: 1),
              onPageChanged: (value) {
                currentIndex = value;
                setState(() {});
              },
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(4),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.greenAccent,
                      width: 1.0,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            texts[index],
                            style: TextStyle(
                              fontSize: Sliderheight * 0.14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: Sliderheight * 0.1),
                        Container(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Order Now',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: Sliderheight * 0.10,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.greenAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          TabPageSelector(
            controller: TabController(
              length: texts.length,
              initialIndex: currentIndex,
              vsync: this,
            ),
            selectedColor: Colors.greenAccent,
            color: Colors.white,
            borderStyle: BorderStyle.solid,
          ),
        ],
      ),
    );
  }
}
