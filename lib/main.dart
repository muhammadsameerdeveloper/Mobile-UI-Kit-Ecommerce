import 'package:ecommerce/screens/splash_view.dart';
import 'package:ecommerce/utils/size_config.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashView());
  }
}
