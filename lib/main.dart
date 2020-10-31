import 'package:Video_Player/page.dart';
import 'package:flutter/material.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Video Player',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _seletedItem = 0;
  var _page = [
    FirstPage(),
    SecondPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: TitledBottomNavigationBar(
          currentIndex: 2, // Use this to update the Bar giving a position
          onTap: (index) {
            //Handle button tap
            setState(() {
              _seletedItem = index;
            });
          },
          items: [
            TitledNavigationBarItem(title: Text('Local'), icon: Icons.home),
            TitledNavigationBarItem(
                title: Text('Network'), icon: Icons.network_cell),
          ]),
      body: Container(
        child: _page[_seletedItem],
      ),
    );
  }
}
