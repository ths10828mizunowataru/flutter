import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/Map.dart';
import 'package:flutter_application_1/screen/Menu.dart';
import 'package:flutter_application_1/screen/Rank.dart';
import 'package:flutter_application_1/screen/TopPage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aqua Guardian',
      theme: ThemeData(primaryColor: Colors.blue[400]),
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  static const _screens = [
    TopPageScreens(),
    MapPageScreens(),
    RankPageScreens(),
    MenuPageScreens(),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ホーム'),
          BottomNavigationBarItem(icon: Icon(Icons.map_sharp), label: 'マップ'),
          BottomNavigationBarItem(
              icon: Icon(Icons.emoji_events), label: 'ランキング'),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'メニュー'),
        ],
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(255, 219, 227, 234),
      ),
    );
  }
}
