import 'package:e_store_ui/models/product_model.dart';
import 'package:e_store_ui/screens/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../constants.dart';

class LowerBanner extends StatelessWidget {
  final Product product;
  LowerBanner(this.product);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            PageTransition(
                type: PageTransitionType.leftToRightWithFade,
                child: DetailsScreen(
                  product: products[5],
                )));
      },
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                  vertical: 24.0,
                ),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Special For You',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 22.0,
                        color: kPrimaryColor,
                      ),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'See All',
                        style: TextStyle(
                          color: kMainColor,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
              ),
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 16.0,
                    ),
                    decoration: BoxDecoration(
                      color: kBackgroundColor,
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    child: Row(
                      children: <Widget>[
                        Image.asset(
                          product.imagePath,
                          height: 90.0,
                          width: 100.0,
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              product.name,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18.0,
                                color: kPrimaryColor,
                              ),
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              "\$ ${product.price}",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18.0),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 1,
                    bottom: 1,
                    child: Container(
                      alignment: Alignment.center,
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(16),
                        ),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          color: Colors.black,
                          size: 22.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
