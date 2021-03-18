import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_dev/src/home/web/PageOne.dart';
import 'package:portfolio_dev/src/home/web/PageOneView.dart';

class ViewWeb extends StatefulWidget {
  @override
  _ViewWebState createState() => _ViewWebState();
}

class _ViewWebState extends State<ViewWeb> {
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context).size;
    final _controller = PageController(initialPage: 0);
    final _pageNotifier = ValueNotifier<int>(0);

    return Scaffold(
        body: Padding(
            padding: EdgeInsets.symmetric(vertical: 40, horizontal: 100),
            child: PageView(
              controller: _controller,
              scrollDirection: Axis.vertical,
              onPageChanged: (int _count) {
                print(_count);
                _pageNotifier.value = _count;
              },
              children: [
                PageOneView(),
                PageOne(mediaQuery: _mediaQuery, pageNotifier: _pageNotifier),
                PageOne(mediaQuery: _mediaQuery, pageNotifier: _pageNotifier),
                PageOne(mediaQuery: _mediaQuery, pageNotifier: _pageNotifier)
              ],
            )));
  }
}
