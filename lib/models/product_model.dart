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
    description: "This is the brand new X-box Controller",
    imagePath: "assets/images/gamecontroller1.png",
    price: 100,
  ),
  Product(
    name: "Headphone",
    price: 200,
    description: "This is the brand new Headphone",
    imagePath: "assets/images/headphone2.png",
  ),
  Product(
    name: "JBL Headset",
    price: 100,
    description: "This is brand new JBL Headphone",
    imagePath: "assets/images/headphone3.png",
  ),
  Product(
    name: "Iphone 12 Pro Max",
    price: 300,
    description: "This is a brand new Iphone 12 pro Max",
    imagePath: "assets/images/iphone-12.png",
  ),
];
