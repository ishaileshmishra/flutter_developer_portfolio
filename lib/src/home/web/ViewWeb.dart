import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_dev/src/home/web/PageOneView.dart';

class ViewWeb extends StatefulWidget {
  @override
  _ViewWebState createState() => _ViewWebState();
}

class _ViewWebState extends State<ViewWeb> {
  @override
  Widget build(BuildContext context) {
    // var _mediaQuery = MediaQuery.of(context).size;
    final _controller = PageController(initialPage: 0);
    const _totalPage = 5;

    return Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
            padding: EdgeInsets.all(0),
            child: PageView(
              controller: _controller,
              scrollDirection: Axis.vertical,
              onPageChanged: (int _count) {},
              children: [
                PageOneView(
                  pageNotifier: 0,
                  totalPage: _totalPage,
                ),
                PageOneView(
                  pageNotifier: 1,
                  totalPage: _totalPage,
                ),
                PageOneView(
                  pageNotifier: 2,
                  totalPage: _totalPage,
                ),
                PageOneView(
                  pageNotifier: 3,
                  totalPage: _totalPage,
                ),
                PageOneView(
                  pageNotifier: 4,
                  totalPage: _totalPage,
                ),
              ],
            )));
  }
}
