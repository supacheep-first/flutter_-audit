import 'package:flutter/material.dart';
import 'package:myapp/page/counter_page.dart';
import 'package:myapp/page/input_page.dart';

class MainTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.money_off)),
                Tab(icon: Icon(Icons.calendar_today)),
              ],
            ),
            title: Text('Tabs Demo'),
          ),
          body: TabBarView(
            children: [
              MyHomePage(),
              InputPage(),
            ],
          ),
        ),
      ),
    );
  }
}
