import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shoe_app/constants/image.dart';

class ProductBinding extends StatefulWidget {
  const ProductBinding({super.key});

  @override
  State<ProductBinding> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ProductBinding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        automaticallyImplyLeading: false,
        toolbarHeight: 20,
        actions: [],
      ),
      body: Container(
        height: double.infinity,
        child: Card(
          child: Container(
              height: 50,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
              child: ListView(
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      Image.asset(image1),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "price",
                            style: TextStyle(
                                fontFamily: 'sans',
                                color: Colors.red,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "old price",
                            style: TextStyle(
                                fontFamily: 'sans',
                                color: Colors.grey,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.lineThrough),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }
}
