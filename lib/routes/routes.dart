import 'package:adv_ch_9/view/pixabay_api_calling/pixabay_api.dart';
import 'package:flutter/material.dart';

class MyRoutes{
  static Map<String, Widget Function(BuildContext)> myRoutes = {
    '/': (context) => const PixabayApi(),
  };
}