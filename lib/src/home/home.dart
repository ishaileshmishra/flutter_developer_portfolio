import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_dev/src/home/mobile/ViewMobile.dart';
import 'package:portfolio_dev/src/home/tablet/ViewTablet.dart';
import 'package:portfolio_dev/src/home/web/ViewWeb.dart';
import 'package:portfolio_dev/src/home/widgets/Navigation.dart';

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
        backgroundColor: Color(0xff1c1c1c),
        appBar: AppBar(
          backgroundColor: Color(0xff1c1c1c),
          leading: CircleAvatar(
            backgroundColor: Colors.pink.shade50,
            radius: 20,
            child: Icon(
              CupertinoIcons.device_laptop,
              size: 30,
            ),
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
                onTap: () {
                  if (Scaffold.of(context).isDrawerOpen) {
                    Scaffold.of(context).openEndDrawer();
                  } else {
                    Scaffold.of(context).openDrawer();
                  }
                },
                child: Icon(Icons.menu, size: 30),
              ),
            )
          ],
        ),
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Drawer Header'),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 100,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: CommonBottonNav(),
        ),
        body: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth < 640) {
            return ViewMobile();
          } else if (constraints.maxWidth < 1007) {
            return ViewTablet();
          } else {
            return ViewWeb();
          }
        }));
  }
}
