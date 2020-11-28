import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Gesture Crash Example",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gesture Crash Example"),
      ),
      body: Center(
        child: CarouselSlider.builder(
          options: CarouselOptions(
            height: 200,
            viewportFraction: 0.5,
            enlargeCenterPage: true,
            enableInfiniteScroll: true,
          ),
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              //TODO: Click on this container with two fingers at the same time
              color: Theme.of(context).primaryColor,
              width: 200,
            );
          },
        ),
      ),
    );
  }
}
