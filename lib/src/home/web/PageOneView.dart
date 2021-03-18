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
      color: Colors.black12,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          // Developer Photograph
          Positioned(
              child: Container(
            child: Image.asset('img/marcelo.png', fit: BoxFit.fill),
          )),

          // Howdy Shailesh
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: new TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Howdy ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 100,
                            color: Colors.red),
                      ),
                      TextSpan(
                          text: "I'm \nShailesh",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 100,
                              color: Colors.white)),
                    ],
                  ),
                ),
                Icon(
                  Icons.slow_motion_video,
                  size: 150,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
