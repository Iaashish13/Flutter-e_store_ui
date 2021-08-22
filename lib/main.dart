import 'package:e_store_ui/constants.dart';
import 'package:e_store_ui/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          backgroundColor: kPrimaryColor,
          iconTheme: IconThemeData(
            color: kSecondaryColor,
            size: kIconSize,
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
