import 'package:e_store_ui/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Icon(Icons.grid_view_outlined),
        ),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            iconSize: kIconSize,
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  child: Image.network(
                    imageUrl,
                    width: kIconSize,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
              Positioned(
                top: 6,
                right: 5,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  height: 12.0,
                  width: 12.0,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 16.0,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: kSecondaryColor,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(88.0),
                    ),
                    border: Border.all(width: 0.0, color: kPrimaryColor),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 200.0,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(88.0),
                    ),
                    border: Border.all(
                      width: 0.0,
                      color: kSecondaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
