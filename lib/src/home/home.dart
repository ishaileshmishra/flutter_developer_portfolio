import 'package:flutter/material.dart';
import 'package:portfolio_dev/src/home/mobile/ViewMobile.dart';
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
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.all(10),
          child: Image.asset("assets/img/analysis.png"),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(20),
            child: NavigateMore(),
          )
        ],
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        return constraints.maxWidth < 600 ? ViewMobile() : ViewWeb();
      }),
    );
  }
}
