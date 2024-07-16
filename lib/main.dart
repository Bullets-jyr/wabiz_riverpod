import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wabiz_riverpod/future_provider/simple_future_provider.dart';
import 'package:wabiz_riverpod/provider/counter_provider.dart';
import 'package:wabiz_riverpod/state_notifier_provider/my_state_notifier_provider.dart';
import 'package:wabiz_riverpod/state_provider/my_state_provider.dart';

import 'provider/counter_cfw.dart';
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
      home: MyHomePage(),
      // home: Scaffold(
      //   body: Consumer(
      //     builder: (context, ref, child) {
      //       // final counter = ref.watch(counterStateProvider);
      //       final counter = ref.watch(counterStateNotifierProvider);
      //       return Center(
      //         child: Text(
      //           '$counter',
      //         ),
      //       );
      //     },
      //   ),
      //   floatingActionButton: Consumer(builder: (context, ref, child) {
      //     final counter = ref.read(counterProvider);
      //     return FloatingActionButton(
      //       onPressed: () {
      //         // ref.read(counterStateProvider.notifier).update((state) => state += 1);
      //         ref.read(counterStateNotifierProvider.notifier).increment();
      //       },
      //       child: Icon(
      //         Icons.add,
      //       ),
      //     );
      //   }),
      // ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyFutureProviderWidget(),
    );
  }
}

class MyFutureProviderWidget extends ConsumerWidget {
  const MyFutureProviderWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final intValue = ref.watch(simpleIntFutureProvider);
    return intValue.when(
      data: (data) {
        return Center(
          child: Text('$data'),
        );
      },
      error: (error, trace) {
        return Text('$error');
      },
      loading: () {
        return Center(
          child: Text('로딩중'),
        );
      },
    );
  }
}
