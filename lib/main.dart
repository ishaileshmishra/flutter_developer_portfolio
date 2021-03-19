import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_dev/src/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shailesh',
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      theme: ThemeData(
        // This is the theme of your application.
        //primarySwatch: Colors.blueGrey,
        bottomAppBarColor: Colors.green,
        //fontFamily: 'pt_sans',
        textTheme: GoogleFonts.righteousTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: HomeView(title: 'developer ishaileshmishra'),
    );
  }
}
