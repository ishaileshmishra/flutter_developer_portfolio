import 'dart:html';

import 'package:flutter/material.dart';

class PageOneView extends StatefulWidget {
  PageOneView({Key key}) : super(key: key);

  @override
  _PageOneViewState createState() => _PageOneViewState();
}

class _PageOneViewState extends State<PageOneView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            child: Image.network(
                'https://www.slrlounge.com/wp-content/uploads/2014/01/black-clothing-background-2.jpg'),
          ),
          // Developer Photograph
          Positioned(
              bottom: 20,
              right: 100,
              child: Container(
                child: Image.asset('/assets/img/marcelo.jpg'),
              )),

          // Howdy Shailesh
          Column(
            children: [
              Text(
                "Howdy, I'm Shailesh",
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              Icon(
                Icons.slow_motion_video,
                size: 150,
              )
            ],
          )
        ],
      ),
    );
  }
}
