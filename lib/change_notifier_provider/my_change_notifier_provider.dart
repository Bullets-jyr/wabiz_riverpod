import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterChangeNotifierProvider = ChangeNotifierProvider<CounterChangeNotifier>(
  (ref) => CounterChangeNotifier(),
);

class CounterChangeNotifier extends ChangeNotifier {
  int counterValue = 0;

  void increment() {
    counterValue += 1;
    notifyListeners();
  }

  void decrement() {
    counterValue -= 1;
    notifyListeners();
  }
}
