import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_dev/src/home/mobile/ViewMobile.dart';
import 'package:portfolio_dev/src/home/web/ViewWeb.dart';

class HomeView extends StatefulWidget {
  HomeView({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(
          CupertinoIcons.device_laptop,
          size: 30,
        ),
        actions: [
          Row(
            children: [
              SizedBox(width: 180),
              Text(
                "+91 83 780-26-266",
                style: GoogleFonts.righteous(),
              ),
              SizedBox(width: 20),
              Text(
                "/",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(width: 20),
              Text(
                "mshaileshr@gmail.com",
                style: GoogleFonts.righteous(),
              )
            ],
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: InkWell(
              onTap: () => print('Hola, Open the drawer here'),
              child: Icon(Icons.menu, size: 30),
            ),
          )
        ],
      ),

      // Builds a widget tree that can depend on the parent widget's size.
      // [find here](https://api.flutter.dev/flutter/widgets/LayoutBuilder-class.html)
      body: LayoutBuilder(builder: (context, constraints) {
        return constraints.maxWidth < 600 ? ViewMobile() : ViewWeb();
      }),
    );
  }
}
