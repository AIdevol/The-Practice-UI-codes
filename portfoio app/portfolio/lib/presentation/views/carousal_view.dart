import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarousalView extends StatefulWidget {
  const CarousalView({super.key});

  @override
  State<CarousalView> createState() => _CarousalViewState();
}

class _CarousalViewState extends State<CarousalView> {
  final CarouselController buttonCarouselController = CarouselController();

  final List<Widget> child = [
    Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        height: 200,
        width: 300,
        color: Colors.red,
        child: Center(child: Text('Slide 1')),
      ),
    ),
    Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        height: 200,
        width: 300,
        color: Colors.blue,
        child: Center(child: Text('Slide 2')),
      ),
    ),
    Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        height: 200,
        width: 300,
        color: Colors.green,
        child: Center(child: Text('Slide 3')),
      ),
    ),
    Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        height: 200,
        width: 300,
        color: Colors.black,
        child: Center(child: Text('Slide 4')),
      ),
    ),
    Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        height: 200,
        width: 300,
        color: Colors.grey,
        child: Center(child: Text('Slide 5')),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        if (child.isNotEmpty)
          CarouselSlider(
            items: child,
            carouselController: buttonCarouselController,
            options: CarouselOptions(
              autoPlay: false,
              enlargeCenterPage: true,
              viewportFraction: 0.8,
              aspectRatio: 2.0,
              initialPage: 2,
            ),
          )
        else
          Center(child: Text('No items to display')),
        ElevatedButton(
          onPressed: () => buttonCarouselController.nextPage(
            duration: Duration(milliseconds: 300),
            curve: Curves.linear,
          ),
          child: Text('→'),
        ),
      ],
    );
  }
}

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(title: Text('Carousel Slider Example')),
//       body: Center(child: CarousalView()),
//     ),
//   ));
// }
