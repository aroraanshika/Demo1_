import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  List<String> items = [
    'hello',
    'world',
    'flutter',
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double cardWidth = screenWidth * 0.95;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 16),
              SizedBox(
                height: 100,
                width: cardWidth,
                child: PageView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.blue, // Example background color
                      child: Center(
                        child: Text(
                          items[index],
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
