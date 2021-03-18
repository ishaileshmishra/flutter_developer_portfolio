import 'package:flutter/material.dart';
import 'package:portfolio_dev/src/home/widgets/Constants.dart';
import 'package:portfolio_dev/src/home/widgets/Navigation.dart';

class PageOne extends StatelessWidget {
  const PageOne({
    Key key,
    @required this.mediaQuery,
    @required this.pageNotifier,
  }) : super(key: key);

  final Size mediaQuery;
  final ValueNotifier<int> pageNotifier;

  @override
  Widget build(BuildContext context) {
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Section Top
        // Row(
        //   children: [
        //     DevCirculerAvator(urlProfile: urlProfile),
        //     SizedBox(width: 80),
        //     WidgetTxtHiThere(descriptionAbout: descriptionAbout),
        //   ],
        // ),

        // SizedBox(height: 40),
        // // Section: My career so for
        // Row(
        //   children: [
        //     myCareerSoFor(context, demoTxt: demoTxt),
        //     SizedBox(width: 20),
        //     buildWorkingHeap(mediaQuery),
        //   ],
        // ),

        buildCircleIndicator(pageNotifier),
      ],
    );
  }
}
