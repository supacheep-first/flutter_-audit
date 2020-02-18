import 'package:flutter/material.dart';

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

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: TextField(
          controller: myController,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          return showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(content: Text(myController.text));
              });
        },
        child: Icon(Icons.text_fields),
      ),
    );
  }
}
