// import 'package:flutter/material.dart';
// import 'package:shoe_app/constants/image.dart';
// import 'package:shoe_app/controllers/cart_controller.dart'; // Updated import statement

// class HomeController extends StatelessWidget {
//   const HomeController({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.only(top: 16.0),
//         child: GridView.count(
//           crossAxisCount: 2,
//           children: [
//             _buildImageWithTitle(image1, 'Sneakers 1', '52', '62'),
//             _buildImageWithTitle(image2, 'Sneakers 2', '59', '72'),
//             _buildImageWithTitle(image3, 'Sneakers 3', '45', '55'),
//             _buildImageWithTitle(image4, 'Sneakers 4', '68', '76'),
//             _buildImageWithTitle(image5, 'Sneakers5', '62', '55'),
//             _buildImageWithTitle(image6, 'Sneakers5', '72', '155'),
//             _buildImageWithTitle(image7, 'Sneakers5', '92', '155'),
//             _buildImageWithTitle(image8, 'Sneakers5', '192', '655'),
//             _buildImageWithTitle(image9, 'Sneakers5', '162', '255'),
//             _buildImageWithTitle(image10, 'Sneakers5', '262', '345'),
//             _buildImageWithTitle(image11, 'Sneakers5', '234', '355'),
//             _buildImageWithTitle(image12, 'Sneakers5', '162', '55'),
//             _buildImageWithTitle(image13, 'Sneakers5', '32', '55'),
//             _buildImageWithTitle(image14, 'Sneakers5', '122', '165'),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildImageWithTitle(
//       String imagePath, String title, String price, String oldprice) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
//       child: Column(
//         children: [
//           Container(
//             height: 100,
//             decoration: BoxDecoration(
//               color: Colors.red,
//               borderRadius: BorderRadius.circular(18.0),
//             ),
//             child: Image.asset(
//               imagePath,
//             ),
//           ),
//           SizedBox(height: 4),
//           Text(
//             title,
//             style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               Text(
//                 '\$$price',
//                 style: const TextStyle(fontSize: 14, color: Colors.red),
//               ),
//               const SizedBox(
//                 width: 4,
//               ),
//               Text(
//                 '\$$oldprice',
//                 style: const TextStyle(
//                     fontSize: 14,
//                     color: Colors.black54,
//                     decoration: TextDecoration.lineThrough),
//               ),
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               IconButton(
//                 onPressed: () {
//                   CartController.addToCart(
//                     Product(
//                       imagePath: imagePath,
//                       title: title,
//                       price: double.parse(price),
//                       oldPrice: double.parse(oldprice),
//                     ),
//                   );
//                 },
//                 icon: Icon(Icons.favorite_border),
//                 color: Colors.red,
//               ),
//               ElevatedButton(
//                 onPressed: () {},
//                 child: const Text(
//                   'Buy',
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 style: ElevatedButton.styleFrom(
//                     foregroundColor: Colors.white,
//                     backgroundColor: Colors.red,
//                     padding:
//                         const EdgeInsets.symmetric(vertical: 8, horizontal: 26),
//                     shadowColor: Colors.grey[100]),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoe_app/bindings/product_binding.dart';
import 'package:shoe_app/constants/image.dart';
import 'package:shoe_app/controllers/cart_controller.dart';

class HomeController extends StatelessWidget {
  const HomeController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            _buildImageWithTitle(image1, 'Sneakers 1', '52', '62'),
            _buildImageWithTitle(image2, 'Sneakers 2', '59', '72'),
            _buildImageWithTitle(image3, 'Sneakers 3', '45', '55'),
            _buildImageWithTitle(image4, 'Sneakers 4', '68', '76'),
            _buildImageWithTitle(image5, 'Sneakers5', '62', '55'),
            _buildImageWithTitle(image6, 'Sneakers5', '72', '155'),
            _buildImageWithTitle(image7, 'Sneakers5', '92', '155'),
            _buildImageWithTitle(image8, 'Sneakers5', '192', '655'),
            _buildImageWithTitle(image9, 'Sneakers5', '162', '255'),
            _buildImageWithTitle(image10, 'Sneakers5', '262', '345'),
            _buildImageWithTitle(image11, 'Sneakers5', '234', '355'),
            _buildImageWithTitle(image12, 'Sneakers5', '162', '55'),
            _buildImageWithTitle(image13, 'Sneakers5', '32', '55'),
            _buildImageWithTitle(image14, 'Sneakers5', '122', '165'),
          ],
        ),
      ),
    );
  }

  Widget _buildImageWithTitle(
      String imagePath, String title, String price, String oldprice) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
      child: Column(
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18.0),
            ),
            child: Image.asset(
              imagePath,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                '\$$price',
                style: const TextStyle(fontSize: 14, color: Colors.red),
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                '\$$oldprice',
                style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                    decoration: TextDecoration.lineThrough),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  CartController.addToCart(
                    Product(
                      imagePath: imagePath,
                      title: title,
                      price: double.parse(price),
                      oldPrice: double.parse(oldprice),
                    ),
                  );
                },
                icon: const Icon(Icons.favorite_border),
                color: Colors.red,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(ProductBinding());
                },
                child: const Text(
                  'Buy',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.red,
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 26),
                    shadowColor: Colors.grey[100]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:shoe_app/bindings/product_binding.dart';
// import 'package:shoe_app/constants/image.dart';
// import 'package:shoe_app/controllers/cart_controller.dart';

// class HomeController extends StatelessWidget {
//   const HomeController({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final selectedProduct =
//         Rx<Product?>(null); // Reactive variable for selected product

//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.only(top: 16.0),
//         child: GridView.count(
//           crossAxisCount: 2,
//           children: List.generate(
//             14,
//             (index) => _buildImageWithTitle(
//               context,
//               index + 1,
//               'Sneakers ${index + 1}',
//               double.parse('52'), // Parse price strings to doubles
//               double.parse('62'),
//               (product) =>
//                   selectedProduct.value = product, // Update selected product
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildImageWithTitle(
//       BuildContext context,
//       int imageIndex,
//       String title,
//       double price,
//       double oldPrice,
//       Function(Product) onProductClick) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
//       child: Column(
//         children: [
//           Container(
//             height: 100,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(18.0),
//             ),
//             child: Image.asset(
//               'assets/images/sneakers$imageIndex.jpg',
//             ),
//           ),
//           const SizedBox(height: 4),
//           Text(
//             title,
//             style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               Text(
//                 '\$$price',
//                 style: const TextStyle(fontSize: 14, color: Colors.red),
//               ),
//               const SizedBox(
//                 width: 4,
//               ),
//               Text(
//                 '\$$oldPrice',
//                 style: const TextStyle(
//                   fontSize: 14,
//                   color: Colors.black54,
//                   decoration: TextDecoration.lineThrough,
//                 ),
//               ),
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               IconButton(
//                 onPressed: () {
//                   // CartController.to.addToCart(
//                   //   Product(
//                   //     imagePath: 'assets/images/sneakers$imageIndex.jpg',
//                   //     title: title,
//                   //     price: price,
//                   //     oldPrice: oldPrice,
//                   //   ),
//                   // );
//                 },
//                 icon: const Icon(Icons.favorite_border),
//                 color: Colors.red,
//               ),
//               ElevatedButton(
//                 onPressed: () => onProductClick(Product(
//                   imagePath: 'assets/images/sneakers$imageIndex.jpg',
//                   title: title,
//                   price: price,
//                   oldPrice: oldPrice,
//                 )),
//                 child: const Text(
//                   'Buy',
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 style: ElevatedButton.styleFrom(
//                   foregroundColor: Colors.white,
//                   backgroundColor: Colors.red,
//                   padding:
//                       const EdgeInsets.symmetric(vertical: 8, horizontal: 26),
//                   shadowColor: Colors.grey[100],
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
