import 'package:flutter/material.dart';
import 'package:toonworld/widgets/screens/webtoon_home_screens.dart';

class WebtoonApp extends StatelessWidget {
  const WebtoonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WebtoonHomeScreens(),
    );
  }
}
