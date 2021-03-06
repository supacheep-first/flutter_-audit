import 'package:flutter/material.dart';
import 'package:myapp/blocs/bloc_counter.dart';
import 'package:myapp/blocs/bloc_provider.dart';
import 'package:myapp/page/main_tab_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:
            // child: MyHomePage(title: 'Flutter Demo Home Page'),
            MainTabBar()
        // home: MyHomePage(title: 'Flutter Demo Home Page'),
        );
  }
}
