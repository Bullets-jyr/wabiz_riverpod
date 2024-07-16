import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'counter_provider.dart';

class CounterStatefulWidget extends ConsumerStatefulWidget {
  const CounterStatefulWidget({super.key});

  @override
  ConsumerState<CounterStatefulWidget> createState() =>
      _CounterStatefulWidgetState();
}

class _CounterStatefulWidgetState extends ConsumerState<CounterStatefulWidget> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Error
    // ref.read(counterProvider);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        final counter = ref.read(counterProvider);
        counter.increment();
        setState(() {

        });
      },
      child: Text('증가시키기 ${ref.read(counterProvider).counterValue}'),
    );
  }
}