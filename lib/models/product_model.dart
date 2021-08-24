class Product {
  final String name, description;
  final imagePath;
  final int price;

  Product({
    required this.name,
    required this.imagePath,
    required this.price,
    required this.description,
  });
}

List<Product> products = [
  Product(
    name: "Xbox Controller",
    description:
        "This is the brand new X-box Controller.This is the demo description for the items in our estore.It is a very good product which has met user requirements.This is created by Aashish Regmi.Hoepe you will love our product.Thankyou!",
    imagePath: "assets/images/gamecontroller1.png",
    price: 100,
  ),
  Product(
    name: "Headphone",
    price: 200,
    description:
        "This is the brand new Headphone.This is the demo description for the items in our estore.It is a very good product which has met user requirements.This is created by Aashish Regmi.Hoepe you will love our product.Thankyou!",
    imagePath: "assets/images/headphone2.png",
  ),
  Product(
    name: "JBL Headset",
    price: 100,
    description:
        "This is brand new JBL Headphone.This is the demo description for the items in our estore.It is a very good product which has met user requirements.This is created by Aashish Regmi.Hoepe you will love our product.Thankyou!",
    imagePath: "assets/images/headphone3.png",
  ),
  Product(
    name: "Iphone 12 Pro Max",
    price: 300,
    description:
        "This is a brand new Iphone 12 pro Max.This is the demo description for the items in our estore.It is a very good product which has met user requirements.This is created by Aashish Regmi.Hoepe you will love our product.Thankyou!",
    imagePath: "assets/images/iphone-12.png",
  ),
  Product(
    name: "Beats Headphone",
    price: 300,
    description:
        "This is a brand new Beats Headphone.This is the demo description for the items in our estore.It is a very good product which has met user requirements.This is created by Aashish Regmi.Hoepe you will love our product.Thankyou!",
    imagePath: "assets/images/headphone1.png",
  ),
  Product(
    name: "Wireless Gaming Mouse",
    price: 300,
    description:
        "This is a brand new Wireless Gaming Mouse.This is the demo description for the items in our estore.It is a very good product which has met user requirements.This is created by Aashish Regmi.Hoepe you will love our product.Thankyou!",
    imagePath: "assets/images/wireless-mouse.png",
  ),
];
//This is the demo description for the items in our estore.It is a very good product which has met user requirements.This is created by Aashish Regmi.Hoepe you will love our product.Thankyou!
