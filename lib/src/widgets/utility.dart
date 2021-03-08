import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const navSpacer = SizedBox(
  width: 20,
);

Future<void> launchInBrowser(String url) async {
  if (await canLaunch(url)) {
    await launch(
      url,
      forceSafariVC: false,
      forceWebView: false,
      headers: <String, String>{'my_header_key': 'my_header_value'},
    );
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

TextButton navBtn(title, String url) {
  return TextButton(
      onPressed: () {
        print("Launching: $url");
        _launchURL("https://www.linkedin.com/in/ishaileshmishra");
      },
      child: Text(title));
}
