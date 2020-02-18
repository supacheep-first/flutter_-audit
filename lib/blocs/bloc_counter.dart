import 'dart:async';

import 'package:myapp/blocs/bloc_provider.dart';

class BlocCounter implements BlocBase {
  int counter;
  StreamController<int> counterStreamController =
      StreamController<int>.broadcast();

  // like a fucking constructor.
  BlocCounter() {
    this.counter = 0;
    counterStreamController.stream.listen(printCounter);
  }

  incrementCounter() {
    this.counter ++;
    counterStreamController.sink.add(this.counter);
  }

  printCounter(int counter) {
    print("counter = $counter");
  }

  @override
  void dispose() {
    counterStreamController.close();
  }
}
