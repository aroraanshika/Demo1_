import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DynamicCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double cardWidth = constraints.maxWidth * 0.10;
        double cardHeight = constraints.maxWidth * 0.01;
        double padding = cardWidth * 0.06;
        double margin = cardWidth * 0.18;
        double fontSize = cardWidth * 0.60;
        double iconSize = cardWidth * 0.9;
        // double imagePadding = cardWidth * 0.01;

        return Center(
          child: MediaQuery.removePadding(
            removeLeft: true,
            context: context,
            child: Card(
              elevation: 3,
              margin: EdgeInsets.all(margin),
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.greenAccent, width: 1.0),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.all(padding),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/images/blinkit.png',
                        width: cardWidth * 2.4,
                        // height: cardHeight * 0.8,
                        fit: BoxFit.cover,
                        // height: cardHeight * 0.3,
                      ),
                    ),
                    SizedBox(width: .01),
                    Expanded(
                      child: Container(
                        width: cardWidth,
                        // padding: EdgeInsets.all(padding),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '\u20B9 280 | 28 min',
                              style: TextStyle(
                                  fontSize: fontSize,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    IconButton(
                      color: Color.fromARGB(255, 163, 231, 198),
                      icon: Icon(Icons.arrow_forward_ios_outlined),
                      iconSize: iconSize,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
