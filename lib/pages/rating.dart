import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RateUsButton extends StatelessWidget {
  // Replace with your app's Google Play Store URL
  final String playStoreUrl = 'https://play.google.com/store/apps/details?id=com.yourapp.id';

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        final url = '$playStoreUrl&reviewId=0';
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
      },
      child: Text('Rate Us on Play Store'),
    );
  }
}
