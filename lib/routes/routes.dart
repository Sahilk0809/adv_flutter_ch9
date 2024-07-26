import 'package:flutter/material.dart';
import '../screens/Lec-9.2/view/pixabay_api_calling/pixabay_api.dart';

class MyRoutes {
  static Map<String, Widget Function(BuildContext)> myRoutes = {
    '/': (context) => const PixabayApi(),
  };
}
