import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/Menu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ManualPage(),
    );
  }
}

class ManualPage extends StatelessWidget {
  const ManualPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('マニュアル'),
      ),
      body: const Center(
        child: Text('test'),
      ),
    );
  }
}
