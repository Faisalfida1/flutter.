import 'package:flutter/material.dart';
import 'list_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyTabBarApp(),
    );
  }
}

class MyTabBarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('TabBar'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'List View'),
              Tab(text: 'Grid View'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListViewTab(),

          ],
        ),
      ),
    );
  }
}
