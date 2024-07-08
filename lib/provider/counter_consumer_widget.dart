import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'counter_provider.dart';

class CounterWidget extends ConsumerWidget {
  const CounterWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.read(counterProvider);
    final counter2 = ref.read(counter2Provider);
    return ElevatedButton(
      onPressed: () {
        counter.increment();
      },
      child: Text('증가시키기'),
    );
  }
}