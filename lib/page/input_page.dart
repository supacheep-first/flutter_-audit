import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class InputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: InputFrom(),
      ),
    );
  }
}

class InputFrom extends StatefulWidget {
  @override
  _InputFromState createState() => _InputFromState();
}

class _InputFromState extends State<InputFrom> {
  final myController = TextEditingController();
  final myController2 = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    myController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all(100),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                  flex: 2,
                  child: new TextField(
                    decoration: const InputDecoration(
                      labelText: 'จำนวนเงิน'
                    ),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.end,
                    controller: myController,
                  )),
              Expanded(
                  flex: 10,
                  child: new TextField(
                    controller: myController2,
                  ))
            ],
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Scaffold.of(context).showSnackBar(SnackBar(
              content: Text(
                  myController2.text == '' ? 'Save.' : myController2.text)));

          myController.clear();
          myController2.clear();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
