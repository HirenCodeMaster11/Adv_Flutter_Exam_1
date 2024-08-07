import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/View/Cart%20Screen/cart.dart';
import 'package:untitled/View/Detail%20Screen/detail.dart';

import 'View/Home Screen/home.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => HomeScreen(),
      },
    );
  }
}
