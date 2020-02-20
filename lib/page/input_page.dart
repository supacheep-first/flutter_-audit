import 'package:flutter/material.dart';
import 'package:myapp/blocs/bloc_input.dart';
import 'package:myapp/blocs/bloc_provider.dart';

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
  @override
  Widget build(BuildContext context) {
    // like a service.
    BlocInput blocInput = BlocProvider.of(context);

    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new TextField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'จำนวนเงิน'),
                keyboardType: TextInputType.number,
                textAlign: TextAlign.end,
                onChanged: (value) => blocInput.submitAmt(value),
              ),
              new TextField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'รายละเอียด'),
                onChanged: (value) => blocInput.submitDetail(value),
              ),
              StreamBuilder(
                stream: blocInput.amtController.stream,
                initialData: '',
                builder: (context, snapshot){
                  return Text(snapshot.data.toString());
                },
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
