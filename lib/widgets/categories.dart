import 'package:e_store_ui/constants.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    "All Product",
    "Recommended",
    "New Product",
    "Popular",
    "New Offers!",
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildCategory(index),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        padding: EdgeInsets.all(
          6.0,
        ),
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        decoration: BoxDecoration(
          color: selectedIndex == index ? kMainColor : Colors.white,
          borderRadius: BorderRadius.circular(4.0),
          border: Border.all(
            width: 1.0,
            color: Colors.black12,
          ),
        ),
        child: Text(
          categories[index],
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
            color: selectedIndex == index ? kPrimaryColor : Colors.black45,
          ),
        ),
      ),
    );
  }
}
