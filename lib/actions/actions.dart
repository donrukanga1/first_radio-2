import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';

Future<String?> playradio(
  BuildContext context, {
  required String? link,
}) async {
  String? radioplay;

  radioplay = await action_blocks.playradio(
    context,
    link: 'https://s3.radio.co/s265583d6c/listen',
  );

  return null;
}
