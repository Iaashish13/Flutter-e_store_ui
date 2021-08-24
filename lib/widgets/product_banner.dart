import 'package:e_store_ui/constants.dart';
import 'package:e_store_ui/models/product_model.dart';
import 'package:e_store_ui/screens/details_screen.dart';
import 'package:flutter/material.dart';

class ProductBanner extends StatelessWidget {
  final Product product;
  ProductBanner(this.product);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsScreen(product: products[4]),
          ),
        );
      },
      child: Container(
        height: 200.0,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 40.0,
              left: 0,
              right: 0,
              child: Container(
                height: 160.0,
                decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.circular(
                    36.0,
                  ),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Image.asset(
                  product.imagePath,
                  width: 180.0,
                  height: 190.0,
                ),
                SizedBox(
                  width: 24.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                          color: kBackgroundColor,
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: Text(
                          'New Product',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12.0,
                            color: kCaptionColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        product.name,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18.0,
                          color: kPrimaryColor,
                        ),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Buy Now !',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18.0,
                            color: kPrimaryColor,
                          ),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: kMainColor,
                          primary: Colors.yellow,
                          padding: EdgeInsets.symmetric(
                              horizontal: 18.0, vertical: 8.0),
                          minimumSize: Size(5, 5),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
