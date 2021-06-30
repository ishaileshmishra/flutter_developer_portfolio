// Developed by shailesh mishra (ishaileshmishra)
// Github: ishaileshmishra
// LinkedIn: www.linkedin/in/ishaileshmishra

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_dev/src/home/widgets/Util.dart';

buildCircleIndicator(_currentPos, totalCount) {
  return Padding(
    padding: EdgeInsets.all(50),
    child: DotsIndicator(
      onTap: (position) => print('page $position'),
      position: _currentPos,
      dotsCount: totalCount,
      axis: Axis.vertical,
      decorator: DotsDecorator(
        size: const Size.square(9.0),
        activeSize: const Size(9.0, 18.0),
        activeColor: Color(0xffc32865),
        activeShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      ),
    ),
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

class HowdayTextWidget extends StatelessWidget {
  const HowdayTextWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: new TextSpan(
        children: <TextSpan>[
          TextSpan(
              text: 'Howdy, 🙏 ',
              style: GoogleFonts.righteous(
                  color: Color(0xffc32865),
                  fontSize: 100,
                  fontWeight: FontWeight.normal)),
          TextSpan(
              text: "I'm \nShailesh",
              style: GoogleFonts.righteous(
                  color: Colors.white,
                  fontSize: 100,
                  fontWeight: FontWeight.normal)

              // TextStyle(
              //     fontWeight: FontWeight.bold,
              //     fontSize: 100,
              //     color: Colors.white),
              ),
        ],
      ),
    );
  }
}

class WatchResumeClip extends StatelessWidget {
  const WatchResumeClip({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 300,
          child: Divider(
            color: Colors.white,
            thickness: 1,
          ),
        ),
        Icon(
          CupertinoIcons.play_circle_fill,
          size: 150,
        ),
        Text(
          'Watch Resume',
          style: GoogleFonts.righteous(fontSize: 20),
        )
      ],
    );
  }
}

class CommonBottonNav extends StatelessWidget {
  const CommonBottonNav({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 20,
        left: 20,
        right: 20,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Developer © Shailesh Mishra 2021.",
              style: GoogleFonts.righteous(fontSize: 14),
            ),
            Row(
              children: [
                socialIcon('/icons/twitter.png'),
                SizedBox(width: 20),
                socialIcon('/icons/github.png'),
                SizedBox(width: 20),
                socialIcon('/icons/linkedin.png'),
                SizedBox(width: 20),
                socialIcon('/icons/facebook.png'),
              ],
            )
          ],
        ));
  }

  Image socialIcon(String _imgIcon) {
    return Image.asset(
      _imgIcon,
      fit: BoxFit.scaleDown,
      color: Colors.white,
      width: 30,
      height: 30,
    );
  }
}
