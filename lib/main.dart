import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagment/Views/CartPage.dart';
import 'package:statemanagment/Views/ProductScreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'StateManagement with getx',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      routes: {
        '/':(context)=>ProductScreen(),
        'Cart':(context)=>Cart(),
      },
    );
  }
}