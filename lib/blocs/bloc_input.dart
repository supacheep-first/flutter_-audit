// import 'dart:async';
import 'dart:async';

import 'package:myapp/blocs/bloc_provider.dart';

class BlocInput implements BlocBase {
  double amt;
  StreamController<double> amtController = StreamController<double>.broadcast();

  String detail;
  StreamController<String> detailController =
      StreamController<String>.broadcast();

  BlocInput() {
    print("im in");
    amt = 0;
    detail = '';
  }

  @override
  void dispose() {
    amtController.close();
    detailController.close();
  }

  submitAmt(String value) {
    amtController.sink.add(double.parse(value));
  }

  submitDetail(String value) {
    detailController.sink.add(value);
    print(value);
  }
}
