import 'package:adv_ch_9/screens/Lec-9.1/view/detail_screen_recipe.dart';
import 'package:adv_ch_9/screens/Lec-9.1/view/home_screen_recipe.dart';
import 'package:flutter/material.dart';
import '../screens/Lec-9.2/view/pixabay_api_calling/pixabay_api.dart';

class MyRoutes {
  static Map<String, Widget Function(BuildContext)> myRoutes = {
    '/': (context) => const HomeScreenRecipe(),
    '/detail': (context) => const DetailScreenRecipe(),
    '/pixabay': (context) => const PixabayApi(),
  };
}
