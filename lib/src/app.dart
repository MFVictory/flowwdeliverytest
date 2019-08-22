import 'package:flutter/material.dart';
import 'homescreen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Floww Delivery",
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
      ),
      home: HomeScreen(),
    );
  }
}
