import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jurytan_portfolio_app/layouts/home_page.dart';
import 'package:jurytan_portfolio_app/layouts/timeline_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jurytan Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Product Sans',
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      // home: TimelinePage(),
    );
  }
}
