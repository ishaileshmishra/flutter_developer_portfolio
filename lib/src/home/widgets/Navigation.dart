import 'package:flutter/material.dart';
import 'package:portfolio_dev/src/home/widgets/Util.dart';

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
