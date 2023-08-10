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

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            SizedBox(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: PageView.builder(
                itemCount: texts.length,
                physics: BouncingScrollPhysics(),
                controller:
                    PageController(initialPage: 0, viewportFraction: 0.7),
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
                      padding: EdgeInsets.all(35),
                      child: Column(
                        children: [
                          Container(
                            child: Text(
                              texts[index],
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 18),
                          Container(
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'Order Now',
                                style: TextStyle(color: Colors.white),
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
      ),
    );
  }
}
