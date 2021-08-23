import 'package:e_store_ui/constants.dart';
import 'package:e_store_ui/models/product_model.dart';
import 'package:e_store_ui/widgets/Item_card.dart';
import 'package:e_store_ui/widgets/categories.dart';
import 'package:e_store_ui/widgets/product_banner.dart';
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
        crossAxisAlignment: CrossAxisAlignment.start,
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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24.0,
                    ),
                    child: Column(
                      children: <Widget>[
                        ProductBanner(
                          Product(
                            description: '',
                            name: 'Beats Pro Headphone',
                            price: 100,
                            imagePath: 'assets/images/headphone1.png',
                          ),
                        ),
                        SizedBox(
                          height: 24.0,
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Text(
                                'Our Products',
                                style: TextStyle(
                                  fontSize: 26.0,
                                  fontWeight: FontWeight.w700,
                                  color: kSecondaryColor,
                                ),
                              ),
                              Spacer(),
                              Container(
                                height: 36.0,
                                width: 36.0,
                                decoration: BoxDecoration(
                                  color: kMainColor,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Icon(
                                  Icons.format_list_bulleted_outlined,
                                  size: 30.0,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Categories(),
                        SizedBox(
                          height: 36.0,
                        ),
                        Expanded(
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: products.length,
                            itemBuilder: (context, index) => ItemCard(
                              imagePath: products[index].imagePath,
                              productName: products[index].name,
                              price: products[index].price.toString(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 36.0,
                        ),
                      ],
                    ),
                  ),
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
            height: 250.0,
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
