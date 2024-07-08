import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wabiz_riverpod/provider/counter_provider.dart';

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
          child: CounterWidget(),
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
