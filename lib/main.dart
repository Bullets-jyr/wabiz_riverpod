import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wabiz_riverpod/provider/counter_provider.dart';

import 'provider/counter_consumer_widget.dart';

void main() {
  // for dart
  // final container = ProviderContainer();
  // final counterClass = container.read(counterProvider);
  // print(counterClass.counterValue);
  // counterClass.increment();
  // print(counterClass.counterValue);

  // final counter2Class = container.read(counter2Provider);
  // print(counter2Class.counterValue);
  // counter2Class.increment();
  // print(counter2Class.counterValue);

  runApp(
    ProviderScope(
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          // child: CounterWidget(),
          child: CounterStatefulWidget(),
        ),
        floatingActionButton: Consumer(builder: (context, ref, child) {
          final counter = ref.read(counterProvider);
          return FloatingActionButton(
            onPressed: () {
              counter.increment();
            },
            child: Icon(
              Icons.add,
            ),
          );
        }),
      ),
    );
  }
}

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
