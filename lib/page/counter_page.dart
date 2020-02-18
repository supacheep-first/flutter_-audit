import 'package:flutter/material.dart';
import 'package:myapp/blocs/bloc_counter.dart';
import 'package:myapp/blocs/bloc_provider.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    print("build.. build(BuildContext)");
    print("build.. Scaffold");
    print("build.. AppBar");
    print("build.. Center");
    print("build.. Column");
    print("build.. Text ");
    print("build.. FloatingActionButton ");

    // like a service.
    BlocCounter blocCounter = BlocProvider.of(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            StreamBuilder(
              stream: blocCounter.counterStreamController.stream,
              initialData: 0,
              builder: (context, snapshot) {
                print("rebuild now");
                return Text(
                  snapshot.data.toString(),
                  style: Theme.of(context).textTheme.display1,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => blocCounter.incrementCounter(),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes a uto-formatting nicer for build methods.
    );
  }
}
