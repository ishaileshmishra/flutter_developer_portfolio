import 'package:flutter/material.dart';
import 'package:portfolio_dev/src/home/widgets/Util.dart';
import 'package:page_view_indicators/page_view_indicators.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

final _items = [
  Colors.blue,
  Colors.orange,
  Colors.green,
  Colors.pink,
  Colors.red,
  Colors.amber,
  Colors.brown,
  Colors.yellow,
  Colors.blue,
];

buildCircleIndicator(_currentPageNotifier) {
  return CirclePageIndicator(
    dotColor: Colors.blue,
    selectedDotColor: Colors.red,
    itemCount: _items.length,
    currentPageNotifier: _currentPageNotifier,
  );
}

class NavigateMore extends StatelessWidget {
  const NavigateMore({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        navBtn('Github', 'https://github.com/ishaileshmishra'),
        navSpacer,
        navBtn('LinkedIn', 'https://www.linkedin.com/in/ishaileshmishra'),
        navSpacer,
        navBtn('About', 'https://github.com/ishaileshmishra.me'),
        navSpacer,
        navBtn('Contact', 'https://github.com/ishaileshmishra'),
        navSpacer,
        navBtn('View Work', 'https://github.com/ishaileshmishra'),
      ],
    );
  }
}

class WidgetTxtHiThere extends StatelessWidget {
  const WidgetTxtHiThere({
    Key key,
    @required this.descriptionAbout,
  }) : super(key: key);

  final String descriptionAbout;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi there !",
              style: Theme.of(context).textTheme.headline2,
            ),
            SizedBox(height: 20),
            Text(
              descriptionAbout,
              maxLines: 10,
              style: Theme.of(context).textTheme.headline5,
            ),
          ],
        ),
      ),
    );
  }
}

class DevCirculerAvator extends StatelessWidget {
  const DevCirculerAvator({
    Key key,
    @required this.urlProfile,
  }) : super(key: key);

  final String urlProfile;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 130.0,
      backgroundImage: NetworkImage(urlProfile),
      backgroundColor: Colors.transparent,
    );
  }
}

myCareerSoFor(BuildContext context, {String demoTxt}) {
  return Expanded(
      child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "My Career so for",
        style: Theme.of(context).textTheme.headline4,
      ),
      SizedBox(height: 20),
      Text(
        demoTxt,
        maxLines: 10,
        style: Theme.of(context).textTheme.subtitle1,
      ),
    ],
  ));
}

SizedBox buildWorkingHeap(Size mediaQuery) {
  return SizedBox(
    height: 300,
    width: (mediaQuery.height) / 2,
    child: GridView.count(
      crossAxisCount: 4,
      children: List.generate(20, (index) {
        return Card(
          child: Image.network("https://robohash.org/$index"),
        ); //robohash.org api provide you different images for any number you are giving
      }),
    ),
  );
}
