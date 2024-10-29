import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TopPageScreens(),
    );
  }
}

class TopPageScreens extends StatelessWidget {
  const TopPageScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home'),
      ),
      body: const Center(
        child: Text('test'),
      ),
    );
  }
}
