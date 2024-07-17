import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [],
          backgroundColor: Colors.red,
          centerTitle: true,
          title: const Center(child: Text("Cart")),
        ),
        body: Container(
          decoration: const BoxDecoration(color: Colors.white),
        ));
  }
}
