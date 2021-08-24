import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:e_store_ui/constants.dart';
import 'package:e_store_ui/models/product_model.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                        ),
                      ),
                      Container(
                        height: 250.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(88.0),
                          ),
                          border: Border.all(
                            width: 0.0,
                            color: kSecondaryColor,
                          ),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 16.0,
                                vertical: 16.0,
                              ),
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: Icon(
                                      Icons.arrow_back,
                                      color: Colors.white,
                                      size: kIconSize,
                                    ),
                                  ),
                                  Spacer(),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.local_mall,
                                      color: Colors.white,
                                      size: kIconSize,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
                            border: Border.all(
                              width: 0.0,
                              color: kPrimaryColor,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24.0,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(6.0),
                                      decoration: BoxDecoration(
                                        color: kCardColor,
                                      ),
                                      child: Text(
                                        'New Product',
                                        style: TextStyle(
                                          color: Colors.black45,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.0,
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.favorite,
                                        color: kCardColor,
                                        size: kIconSize,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 4.0,
                                ),
                                Text(
                                  product.name,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(
                                  height: 16.0,
                                ),
                                Row(
                                  children: [
                                    RatingBar.builder(
                                      minRating: 1,
                                      itemSize: 20,
                                      initialRating: 5,
                                      direction: Axis.horizontal,
                                      itemCount: 5,
                                      itemPadding: EdgeInsets.symmetric(
                                        horizontal: 4.0,
                                      ),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                    SizedBox(
                                      width: 4.0,
                                    ),
                                    Text(
                                      '(24 reviews)',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black45,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "\$${product.price}",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 22.0,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 24.0,
                                ),
                                Text(
                                  'Descriptions',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 20.0,
                                  ),
                                ),
                                SizedBox(
                                  height: 16.0,
                                ),
                                Text(
                                  product.description,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black45,
                                    fontSize: 16.0,
                                  ),
                                ),
                                SizedBox(
                                  height: 68.0,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Add to Cart',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20.0,
                                        color: kPrimaryColor,
                                      ),
                                    ),
                                    style: TextButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      backgroundColor: kMainColor,
                                      primary: Colors.yellow,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 60.0, vertical: 30.0),
                                      minimumSize: Size(8, 8),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 48.0,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 90.0,
              ),
              alignment: Alignment.topCenter,
              child: Hero(
                tag: "${product.name}",
                child: Image.asset(
                  product.imagePath,
                  height: 330.0,
                  width: 330.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
