import 'package:counter_provider/provider/counterScreenProvider.dart';
import 'package:counter_provider/provider/sliderProvider.dart';
import 'package:counter_provider/screens/counterScreen.dart';
import 'package:counter_provider/screens/sliderScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SliderScreenProvider(),
      child: MaterialApp(
        home: SliderScreen(),
      ),
    );
  }
}
