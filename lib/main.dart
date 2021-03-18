import 'package:flutter/material.dart';
import 'package:portfolio_dev/src/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shailesh Mishra ( ishaileshmishra )',
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      theme: ThemeData(
          // This is the theme of your application.
          //primarySwatch: Colors.blueGrey,
          ),
      home: HomeView(title: 'developer ishaileshmishra'),
    );
  }
}
