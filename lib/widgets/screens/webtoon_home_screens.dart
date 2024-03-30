import 'package:flutter/material.dart';
import 'package:toonworld/models/webtoon_model.dart';
import 'package:toonworld/services/api_service.dart';

class WebtoonHomeScreens extends StatelessWidget {
  WebtoonHomeScreens({super.key});

  Future<List<WebtoonModel>> webtoons = ApiService.getTodaysToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        title: const Center(
          child: Text(
            "오늘의 툰",
            style: TextStyle(
              fontSize: 24,
            ),
          ),
        ),
      ),
      body: FutureBuilder(
        future: webtoons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const Text("There is data!");
          } else {
            return const Text("Loading...");
          }
        },
      ),
    );
  }
}
