import 'package:flutter_riverpod/flutter_riverpod.dart';

class Counter {
  int counterValue = 0;

  increment() {
    counterValue++;
    print(counterValue);
  }
}

final counterProvider = Provider<Counter>(
  (ref) => Counter(),
);

class Counter2 {
  int counterValue = 1;

  increment() {
    counterValue++;
    print(counterValue);
  }
}

final counter2Provider = Provider<Counter2>(
      (ref) => Counter2(),
);
