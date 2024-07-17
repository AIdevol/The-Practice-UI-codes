import 'package:flutter/material.dart';
import 'package:shoe_app/constants/image.dart';
import 'package:shoe_app/controllers/bottomView.dart';
import 'package:shoe_app/controllers/home_controller.dart';
import 'package:shoe_app/pages/cart.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

const heightfix = 80;

class _MyHomePageState extends State<MyHomePage> {
  bool _isSearching = false;
  final TextEditingController _searchController = TextEditingController();

  int selectedIndex = 0;
  void onclicked(int index) {
    setState() {
      selectedIndex = index;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(child: const Text('Shoe App')),
        leading: Container(
          padding: const EdgeInsets.all(12.0),
          child: Image.asset(
            menuIcon, // Make sure menuIcon is the correct asset path
            height: 32,
            width: 32,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              setState(() {
                _isSearching = !_isSearching;
                if (!_isSearching) {
                  _searchController
                      .clear(); // Clear search text when hiding the search field
                }
              });
            },
            child: Container(
              height: 40,
              width: 40,
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(searchIcon),
            ),
          ),
          if (_isSearching)
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextField(
                  controller: _searchController,
                  autofocus: true,
                  decoration: const InputDecoration(
                    hintText: 'Search...',
                    border: InputBorder.none,
                  ),
                  onSubmitted: (searchText) {
                    // Handle search text submission
                    _performSearch(searchText);
                  },
                ),
              ),
            ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => CartView()));
              // Handle tap on shop cart icon
            },
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                shopCart, // Make sure shopCart is the correct asset path
                height: 24,
                width: 24,
              ),
            ),
          ),
        ],
      ),
      body: const SafeArea(
        child: Column(
          children: [
            Expanded(child: HomeController()),
          ],
        ),
      ),
      bottomNavigationBar: BottomView(
        selectedIndex: selectedIndex,
        onclicked: onclicked,
        onTap: (int value) {},
      ),
    );
  }

  void _performSearch(String searchText) {
    // Perform search logic here
    print('Searching for: $searchText');
    // You can add logic to handle the search functionality based on the searchText
  }
}
