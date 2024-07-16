import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'simple_future_provider.dart';

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