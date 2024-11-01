import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RankPageScreens(),
    );
  }
}

class RankPageScreens extends StatelessWidget {
  RankPageScreens({Key? key}) : super(key: key);

  // ダミーデータのランキングリスト
  //データベースと繋げたらここに書く
  final List<Map<String, dynamic>> rankData = [
    {"username": "User01", "score": 95.0},
    {"username": "User02", "score": 89.0},
    {"username": "User03", "score": 85.0},
    {"username": "User04", "score": 78.5},
    {"username": "User05", "score": 70.0},
  ];

  @override
  Widget build(BuildContext context) {
    rankData.sort((a, b) => b['score'].compareTo(a['score']));

    return Scaffold(
      appBar: AppBar(
        title: Text('Ranking'),
      ),
      body: ListView.builder(
        itemCount: rankData.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text("${index + 1}", style: TextStyle(fontSize: 20)),
            title: Text(rankData[index]["username"]),
            trailing: Text("${rankData[index]["score"]}%"),
          );
        },
      ),
      backgroundColor: (const Color.fromARGB(255, 218, 219, 211)),
    );
  }
}
