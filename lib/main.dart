import 'package:adv_ch_9/routes/routes.dart';
import 'package:adv_ch_9/screens/Lec-9.1/provider/detail_recipe_provider.dart';
import 'package:adv_ch_9/screens/Lec-9.1/provider/recipe_provider.dart';
import 'package:adv_ch_9/screens/Lec-9.2/provider/pixabay_api_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PixabayApiProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => RecipeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => DetailRecipeProvider(),
        ),
      ],
      builder: (context, child) => MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        routes: MyRoutes.myRoutes,
      ),
    );
  }
}
