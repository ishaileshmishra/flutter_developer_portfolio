import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeViewLarge extends StatefulWidget {
  @override
  _HomeViewLargeState createState() => _HomeViewLargeState();
}

class _HomeViewLargeState extends State<HomeViewLarge> {
  @override
  Widget build(BuildContext context) {
    const urlProfile =
        "https://images.pexels.com/photos/848117/pexels-photo-848117.jpeg";
    const descriptionAbout =
        "Fuelled by passion for designing compelling products. "
        "I have deep desire to excel and continuously improve in my work, "
        "Learn more about my journey below";

    const demoTxt = "Lorem Ipsum is simply dummy text of the "
        "printing and typesetting industry. Lorem Ipsum has been the "
        "industry's standard dummy text ever since the 1500s, "
        "when an unknown printer took a galley of type and scrambled "
        "it to make a type specimen book. It has survived not only five centuries, "
        "but also the leap into electronic typesetting, remaining essentially "
        "unchanged. It was popularised in the 1960s with the release of "
        "Letraset sheets containing Lorem Ipsum passages, and more "
        "recently with desktop publishing software like Aldus PageMaker "
        "including versions of Lorem Ipsum";

    var mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(vertical: 40, horizontal: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Section Top
          Row(
            children: [
              devCirculerAvator(urlProfile: urlProfile),
              SizedBox(width: 80),
              widgetTxtHiThere(descriptionAbout: descriptionAbout),
            ],
          ),

          SizedBox(height: 40),
          // Section: My career so for
          Row(
            children: [
              myCareerSoFor(demoTxt: demoTxt),
              SizedBox(width: 20),
              buildWorkingHeap(mediaQuery),
            ],
          )
        ],
      ),
    ));
  }

  SizedBox buildWorkingHeap(Size mediaQuery) {
    return SizedBox(
              height: 300,
              width: (mediaQuery.height)/2,
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

  myCareerSoFor({String demoTxt}) {
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
}

class widgetTxtHiThere extends StatelessWidget {
  const widgetTxtHiThere({
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

class devCirculerAvator extends StatelessWidget {
  const devCirculerAvator({
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
