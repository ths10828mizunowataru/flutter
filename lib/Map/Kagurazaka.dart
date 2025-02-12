import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: KagurazakaPage(),
    );
  }
}

class KagurazakaPage extends StatefulWidget {
  const KagurazakaPage({Key? key}) : super(key: key);

  @override
  _KagurazakaPageState createState() => _KagurazakaPageState();
}

class _KagurazakaPageState extends State<KagurazakaPage> {
  String selectedDifficulty = 'イージー';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('神楽坂エリア'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'User01', // ユーザーネームの表示
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                decorationThickness: 3,
              ),
            ),
            SizedBox(height: 20),
            Text(
              '$selectedDifficulty 選択中',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/Map(2).png',
                  width: 150,
                  height: 150,
                ),
                SizedBox(width: 20),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedDifficulty = 'イージー';
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: selectedDifficulty == 'イージー'
                            ? Colors.blue
                            : Colors.grey,
                      ),
                      child: Text('イージー'),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print('$selectedDifficulty でゲーム開始');
              },
              child: Text('スタート'),
            ),
          ],
        ),
      ),
    );
  }
}
