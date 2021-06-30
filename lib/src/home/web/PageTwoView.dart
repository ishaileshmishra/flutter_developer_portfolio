import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_dev/src/home/widgets/Constants.dart';
import 'package:portfolio_dev/src/home/widgets/Navigation.dart';

class PageTwoView extends StatefulWidget {
  PageTwoView({Key key, @required this.pageNotifier, @required this.totalPage})
      : super(key: key);

  final int pageNotifier;
  final int totalPage;

  @override
  _PageTwoViewState createState() => _PageTwoViewState();
}

class _PageTwoViewState extends State<PageTwoView> {
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
          //Image.asset('img/marcelo.png', fit: BoxFit.fill),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 200),
                child: RichText(
                  text: new TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: 'My, ',
                          style: GoogleFonts.righteous(
                              color: Color(0xffc32865),
                              fontSize: 60,
                              fontWeight: FontWeight.normal)),
                      TextSpan(
                        text: "specialization",
                        style: GoogleFonts.righteous(
                            color: Colors.white,
                            fontSize: 60,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40),
              Padding(
                  padding: EdgeInsets.only(left: 200),
                  child: SpecializationCategory()),
              SizedBox(height: 40),
              Row(
                children: [
                  Container(
                    width: 300,
                    child: Divider(
                      color: Colors.white,
                      thickness: 1,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Download Resume',
                    style: GoogleFonts.righteous(fontSize: 18),
                  )
                ],
              ),
            ],
          ),
          buildCircleIndicator(_currentPage, _totalPage),
        ],
      ),
    );
  }
}

class SpecializationCategory extends StatelessWidget {
  const SpecializationCategory({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SpecializedColumn(title: 'MOBILE CODING', abtDescription: demoTxt),
        SizedBox(height: 20, width: 20),
        SpecializedColumn(title: 'WEB DESIGN', abtDescription: demoTxt),
        SizedBox(height: 20, width: 20),
        SpecializedColumn(title: 'PYTHON', abtDescription: demoTxt),
      ],
    );
  }
}

class SpecializedColumn extends StatelessWidget {
  const SpecializedColumn({
    Key key,
    @required String title,
    @required String abtDescription,
  })  : _title = title,
        _abtDescription = abtDescription,
        super(key: key);

  final String _title;
  final String _abtDescription;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.laptop_mac,
            color: Color(0xffc32865),
            size: 60,
          ),
          SizedBox(height: 10),
          Text(
            _title,
            style: GoogleFonts.righteous(fontSize: 18),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 100,
            width: 300,
            child: Text(
              _abtDescription,
              maxLines: 4,
              style: GoogleFonts.righteous(fontSize: 13),
            ),
          )
        ],
      ),
    );
  }
}
