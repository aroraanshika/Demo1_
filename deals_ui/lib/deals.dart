import 'dart:io';

import 'package:deals_ui/slider.dart';
import 'package:flutter/material.dart';

import 'card.dart';

class Deals extends StatefulWidget {
  //constructor function
  const Deals({super.key});
  @override
  State<Deals> createState() {
    return _DealsState();
  }
}

class _DealsState extends State<Deals> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize = screenWidth * 0.06;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          title: Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Best Deals',
              style: TextStyle(
                fontSize: fontSize,
                color: Colors.black,
                // fontWeight: FontWeight.bold,
              ),
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            iconSize: 30,
            onPressed: () {},
            icon: Icon(Icons.arrow_back_outlined, color: Colors.black),
          ),
          backgroundColor: Colors.white,
          bottom: PreferredSize(
            child: Container(
              color: Color.fromARGB(255, 163, 231, 198),
              height: 1.0,
            ),
            preferredSize: Size.fromHeight(2.0),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                //   // SizedBox(
                //   //     height: 42,
                //   //     width: 40,
                //   //     child: ListView(children: [MyCarouselSlider()])),
                //   // DynamicCard(),
                //   // DynamicCard(),
                //   // DynamicCard(),
                //   // DynamicCard(),
                MyCarouselSlider(),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return DynamicCard();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
