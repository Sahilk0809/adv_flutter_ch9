import 'package:adv_ch_9/provider/pixabay_api_provider.dart';
import 'package:adv_ch_9/routes/routes.dart';
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
      ],
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: MyRoutes.myRoutes,
      ),
    );
  }
}
