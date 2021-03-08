import 'package:flutter/material.dart';
import 'package:portfolio_dev/src/large/HomeViewLarge.dart';
import 'package:portfolio_dev/src/small/HomeViewSmall.dart';
import 'package:portfolio_dev/src/widgets/utility.dart';

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
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.all(10),
          child: Image.asset("assets/img/analysis.png"),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                navBtn('Github', 'https://github.com/ishaileshmishra'),
                navSpacer,
                navBtn(
                    'LinkedIn', 'https://www.linkedin.com/in/ishaileshmishra'),
                navSpacer,
                navBtn('About', 'https://github.com/ishaileshmishra'),
                navSpacer,
                navBtn('Contact', 'https://github.com/ishaileshmishra'),
                navSpacer,
                navBtn('View Work', 'https://github.com/ishaileshmishra'),
              ],
            ),
          )
        ],
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        return constraints.maxWidth < 600 ? HomeViewSmall() : HomeViewLarge();
      }),
    );
  }
}
