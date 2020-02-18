import 'package:flutter/material.dart';
import 'package:myapp/blocs/bloc_counter.dart';
import 'package:myapp/blocs/bloc_provider.dart';
import 'package:myapp/page/input_page.dart';

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
      home: BlocProvider(
          // child: MyHomePage(title: 'Flutter Demo Home Page'),
          child: InputPage(),
          bloc: BlocCounter()),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
