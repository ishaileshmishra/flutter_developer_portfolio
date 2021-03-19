import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_dev/src/home/widgets/Navigation.dart';

class PageOneView extends StatefulWidget {
  PageOneView({Key key, @required this.pageNotifier, @required this.totalPage})
      : super(key: key);

  final int pageNotifier;
  final int totalPage;

  @override
  _PageOneViewState createState() => _PageOneViewState();
}

class _PageOneViewState extends State<PageOneView> {
  int _currentPage, _totalPage;
  @override
  void initState() {
    super.initState();
    _currentPage = widget.pageNotifier;
    _totalPage = widget.totalPage;
    print('_currentPage: $_currentPage and _totalPage: $_totalPage');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        fit: StackFit.loose,
        alignment: AlignmentDirectional.centerEnd,
        children: [
          Image.asset('img/marcelo.png', fit: BoxFit.fill),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 220),
                child: HowdayTextWidget(),
              ),
              SizedBox(height: 20),
              WatchResumeClip(),
            ],
          ),
          buildCircleIndicator(_currentPage, _totalPage),
        ],
      ),
    );
  }
}
