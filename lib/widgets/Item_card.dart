import 'package:flutter/material.dart';

import 'package:e_store_ui/constants.dart';
import 'package:e_store_ui/models/product_model.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final VoidCallback press;
  const ItemCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
          color: kCardColor,
          borderRadius: BorderRadius.circular(36.0),
        ),
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Hero(
                  tag: "${product.name}",
                  child: Image.asset(
                    product.imagePath,
                    height: 160.0,
                    width: 170.0,
                  ),
                ),
                SizedBox(
                  height: 24.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6.0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.name,
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              fontSize: 18.0),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          "\$ ${product.price}",
                          style: TextStyle(
                              color: Colors.black45,
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              right: 1,
              bottom: 1,
              child: Container(
                alignment: Alignment.center,
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  color: kSecondaryColor,
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
                    color: Colors.white,
                    size: 22.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
