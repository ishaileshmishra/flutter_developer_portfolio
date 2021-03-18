import 'package:flutter/cupertino.dart';
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
          Image.asset('img/marcelo.png', fit: BoxFit.fill),
          // Howdy Shailesh
          Positioned(
            left: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(0),
                      child: RichText(
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
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 300,
                          child: Divider(
                            color: Colors.white,
                            thickness: 1,
                          ),
                        ),
                        Icon(
                          CupertinoIcons.play_circle,
                          size: 150,
                        ),
                        Text(
                          'Watch Resume',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),

          //Bottom sheet
          Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("© Shailesh 2021."),
                  Row(
                    children: [
                      Icon(CupertinoIcons.add),
                      SizedBox(width: 20),
                      Icon(CupertinoIcons.alt),
                      SizedBox(width: 20),
                      Icon(CupertinoIcons.alarm),
                      SizedBox(width: 20),
                      Icon(CupertinoIcons.barcode),
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
